using UnityEngine;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using System.Collections;
using System.IO;
using UnityEngine.UI;

public class CameraFollow : MonoBehaviour
{
    private enum Phase{ Combat, AllDead};

    private Phase phase = Phase.Combat;
    public float dampTime = 0.15f;
    private Vector3 velocity = Vector3.zero;
    [SerializeField]
    private Transform[] targets;

    public float camDistance;

    private float MidX;
    private float MidY;
    private float MidZ;
    private float CamOffset;
    [SerializeField]
    private float distanceMax;

    public float distanceMaxCam;

    private List<float> distanceAll = new List<float>();
    private float rotateCam;
    private Quaternion camRotation = new Quaternion(0, 180, 0, 0);
    private int setFieldOfView;
    private Vector3 gravity;

    public Vector3 distanceDead;

    public Texture2D tex2D = null;
    public Transform posScreen;
    public GameObject planeScreen;
    private bool takeScreen = true;

    private float time = 0;
    private GameManager manager;

    private GameManager.Mode mode;
    
    void Start()
    {
        CameraManager.Instance.DeadPlayer1 = false;
        CameraManager.Instance.DeadPlayer2 = false;
        CameraManager.Instance.DeadBoss = false;
        manager = GameManager.Instance;
        targets = new Transform[manager.NbPlayers+1];
        
        for (int i = 0; i < manager.NbPlayers; i++)
        {
            targets[i] = manager.Players[i].transform;
        }
        targets[manager.NbPlayers] = manager.Boss.transform;
        camDistance = 3.0f;
        setFieldOfView = 60;
        rotateCam = 35;
        mode = manager.TypeMode;

    }

    void OnPostRender()
    {
        if (CameraManager.Instance.DeadBoss && takeScreen)
        {
            if (tex2D == null)
            {
                tex2D = new Texture2D(Screen.width, Screen.height, TextureFormat.RGB24, false);
            }
            tex2D.ReadPixels(new Rect(0, 0, Screen.width, Screen.height), 0, 0);
            tex2D.Apply();
            planeScreen.GetComponent<Renderer>().material.mainTexture = tex2D;
            takeScreen = false;
        }
    }
    void FixedUpdate()
    {
        switch(phase)
        {
            case Phase.Combat:
                Gravity();
                DistanceMax();


                Vector3 delta = gravity - GetComponent<Camera>().ViewportToWorldPoint(new Vector3(0.5f, 0.5f, camDistance + CamOffset));
                Vector3 destinationPos = transform.position + delta;
                Quaternion destinationRot = Quaternion.Euler(rotateCam, camRotation.y, camRotation.z);
                transform.position = Vector3.SmoothDamp(transform.position, destinationPos, ref velocity, dampTime);
                transform.rotation = Quaternion.Slerp(transform.rotation, destinationRot, 0.03f);
                Camera.main.fieldOfView = Mathf.Lerp(Camera.main.fieldOfView, setFieldOfView, 0.03f);
                break;
            case Phase.AllDead:
                manager.Boss.GetComponent<LilithAI>().LilithAccessor.StopAllCoroutines();
                manager.Boss.GetComponent<LilithAI>().StopAllCoroutines();
                for (int i = 0; i < manager.NbPlayers; i++)
                {
                    manager.Players[i].GetComponent<Horsemen>().enabled = false;
                }
                if (mode == GameManager.Mode.hardcoreD || mode == GameManager.Mode.standardS)
                {
                    if (CameraManager.Instance.DeadPlayer1)
                    {
                        transform.position = Vector3.SmoothDamp(transform.position, targets[0].position + new Vector3(.0f, distanceDead.y, distanceDead.z), ref velocity, dampTime);
                        transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.Euler(60.0f, camRotation.y, camRotation.z), 0.03f);
                    }
                    else if (CameraManager.Instance.DeadPlayer2)
                    {
                        transform.position = Vector3.SmoothDamp(transform.position, targets[1].position + new Vector3(.0f, distanceDead.y, distanceDead.z), ref velocity, dampTime);
                        transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.Euler(60.0f, camRotation.y, camRotation.z), 0.03f);
                    }
                }
                else if(mode == GameManager.Mode.standardD)
                {
                    if (CameraManager.Instance.DeadFirst == 0)
                    {
                        transform.position = Vector3.SmoothDamp(transform.position, targets[1].position + new Vector3(.0f, distanceDead.y, distanceDead.z), ref velocity, dampTime);
                        transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.Euler(60.0f, camRotation.y, camRotation.z), 0.03f);
                    }
                    else if (CameraManager.Instance.DeadFirst == 1)
                    {
                        transform.position = Vector3.SmoothDamp(transform.position, targets[0].position + new Vector3(.0f, distanceDead.y, distanceDead.z), ref velocity, dampTime);
                        transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.Euler(60.0f, camRotation.y, camRotation.z), 0.03f);
                    }
                }
                if (transform.localEulerAngles.x > 59.0f)
                    manager.Dead = true;
                break;
        }
        if (!takeScreen)
        {
            transform.position = posScreen.position;
            transform.rotation = posScreen.rotation;
            manager.TexScreen = tex2D;
            SceneManager.LoadScene("Score");
        }
       
        /* else
         {
             transform.position = Vector3.SmoothDamp(transform.position, CameraManager.Instance.CameraDoor[0].transform.position, ref velocity, dampTime);
             transform.rotation = Quaternion.Slerp(transform.rotation, CameraManager.Instance.CameraDoor[0].transform.rotation, 0.1f);
         }*/
    }

    void Update()
    {
        if (takeScreen)
            time += Time.deltaTime;
        manager.Timer = time;

        switch(mode)
        {
            case GameManager.Mode.standardS:
                if (CameraManager.Instance.DeadPlayer1)
                    phase = Phase.AllDead;
                break;
            case GameManager.Mode.standardD:
                if (CameraManager.Instance.DeadPlayer1 && CameraManager.Instance.DeadPlayer2)
                    phase = Phase.AllDead;
                else if (CameraManager.Instance.DeadPlayer1 || CameraManager.Instance.DeadPlayer2)
                {
                    targets = new Transform[2];
                    if (CameraManager.Instance.DeadPlayer1)
                    {
                        manager.Players[0].GetComponent<Horsemen>().enabled = false;
                       
                        targets[0] = manager.Players[1].transform;
                        targets[1] = manager.Boss.transform;
                    }
                    else if (CameraManager.Instance.DeadPlayer2)
                    {
                        manager.Players[1].GetComponent<Horsemen>().enabled = false;
                        targets[0] = manager.Players[0].transform;
                        targets[1] = manager.Boss.transform;
                    }
                }
                break;
            case GameManager.Mode.hardcoreD:
                if (CameraManager.Instance.DeadPlayer1 || CameraManager.Instance.DeadPlayer2)
                    phase = Phase.AllDead;
                break;  
        }
      
        /*if (Input.GetKey(KeyCode.A))
        {
            CameraManager.Instance.Change = true;
        }
        if (Input.GetKey(KeyCode.E))
        {
            CameraManager.Instance.Change = false;
        }*/
    }


    bool IsVisibleFrom(Renderer renderer)
    {
        Plane[] planes = GeometryUtility.CalculateFrustumPlanes(Camera.main);
        return GeometryUtility.TestPlanesAABB(planes, renderer.bounds);
    }

    void DistanceMax()
    {
        distanceMax = 0;
        int cpt = 0;

        for (int i = 0; i < targets.Length; i++)
        {

            if (targets[i] != targets[targets.Length - 1]) // Condition pour que la dernière target du tableau ne passe pas dans la boucle
            {
                for (int y = i + 1; y < targets.Length; y++)
                {
                    distanceAll.Add(Vector3.Distance(targets[i].position, targets[y].position));
                    cpt++;
                }
            }
        }
        for (int i = 0; i < distanceAll.Count; i++)
            distanceMax = Mathf.Max(distanceMax, distanceAll[i]);

        CamOffset = distanceMax * 0.9f;
        if (distanceMax < distanceMaxCam / 2)
        {
            rotateCam = 55.0f;
        }
        else
        {
            rotateCam = 35.0f;
        }

        if (distanceMax < distanceMaxCam + 2.0f)
            setFieldOfView = 55;
        else
            setFieldOfView = 60;

        dampTime = 0.15f;
        distanceAll.Clear();
    }


    void Gravity()
    {
        float posX = 0;
        float posY = 0;
        float posZ = 0;

        for (int i = 0; i < targets.Length; i++)
        {
            posX += targets[i].position.x;
            posY += targets[i].position.y;
            posZ += targets[i].position.z;
        }
        posX = posX / targets.Length;
        posY = posY / targets.Length;
        posZ = posZ / targets.Length;

        gravity = new Vector3(posX, posY, posZ);
    }
}