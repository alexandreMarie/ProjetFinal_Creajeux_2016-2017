using UnityEngine;
using System.Collections.Generic;
using System.Collections;

public class CameraFollow : MonoBehaviour
{

    public float dampTime = 0.15f;
    private Vector3 velocity = Vector3.zero;
    public Transform[] targets;

    public float camDistance;

    private float MidX;
    private float MidY;
    private float MidZ;
    private float CamOffset;
    private float bounds;
    [SerializeField]
    private float distanceMax;
    
    public float distanceMaxCam;

    private List<float> distanceAll = new List<float>();
    private float rotateCam;
    private Quaternion camRotation = new Quaternion(0, 180, 0, 0);
    private int setFieldOfView;
    private bool distance = true;
    private Vector3 gravity;

    public Vector3 distanceDead;

    private GameManager manager;
    void Start()
    {
        manager = GameManager.Instance;
        manager.LifePlayer1 = 20;
        manager.Dead = false;
        manager.GameOver = GameObject.FindGameObjectWithTag("GameOver");
        CameraManager.Instance.DeadPlayer1 = false;
        camDistance = 10.0f;
        bounds = 12.0f;
        setFieldOfView = 60;
        rotateCam = 35;

    }

    void FixedUpdate()
    {
        
        if (!CameraManager.Instance.Change && !CameraManager.Instance.DeadPlayer1 && !CameraManager.Instance.DeadPlayer2)
        {
            Gravity();
            DistanceMax();


            Vector3 delta = gravity - GetComponent<Camera>().ViewportToWorldPoint(new Vector3(0.5f, 0.5f, camDistance + CamOffset));
            Vector3 destinationPos = transform.position + delta;
            Quaternion destinationRot = Quaternion.Euler(rotateCam, camRotation.y, camRotation.z);
            transform.position = Vector3.SmoothDamp(transform.position, destinationPos, ref velocity, dampTime);
            transform.rotation = Quaternion.Slerp(transform.rotation, destinationRot, 0.03f);
            Camera.main.fieldOfView = Mathf.Lerp(Camera.main.fieldOfView, setFieldOfView, 0.03f);
        }
        else
        {
            if(CameraManager.Instance.DeadPlayer1)
            {
                transform.position = Vector3.SmoothDamp(transform.position, targets[0].position + new Vector3(.0f, distanceDead.y, distanceDead.z), ref velocity, dampTime);
                transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.Euler(60.0f, camRotation.y, camRotation.z), 0.03f);
                if (transform.localEulerAngles.x > 59.0f)
                    manager.Dead = true;
            }
            else if(CameraManager.Instance.DeadPlayer2)
            {
                transform.position = Vector3.SmoothDamp(transform.position, targets[1].position + new Vector3(.0f, distanceDead.y, distanceDead.z), ref velocity, dampTime);
                transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.Euler(60.0f, camRotation.y, camRotation.z), 0.03f);
            }
        }
        /* else
         {
             transform.position = Vector3.SmoothDamp(transform.position, CameraManager.Instance.CameraDoor[0].transform.position, ref velocity, dampTime);
             transform.rotation = Quaternion.Slerp(transform.rotation, CameraManager.Instance.CameraDoor[0].transform.rotation, 0.1f);
         }*/
    }
    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.A))
        {
            CameraManager.Instance.Change = true;
        }
        if (Input.GetKey(KeyCode.E))
        {
            CameraManager.Instance.Change = false;
        }

        
        //Debug.Log(dampTime);
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
        
            /*if (!IsVisibleFrom(targets[i].GetComponentInChildren<Renderer>()))
                distance = false;*/
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

        if (distanceMax < distanceMaxCam)
        {
            //if (distance)
                camDistance = distanceMaxCam -2;
        }
        else if (distanceMax > distanceMaxCam*2)
        {
            rotateCam = 35.0f;
        }
        else
        {
            rotateCam = 50.0f;
        }

        if (distanceMax < distanceMaxCam+2.0f)
            setFieldOfView = 60;

        for (int i = 0; i < targets.Length; i++)
        {
            float distanceZTargetToCam = transform.position.z - targets[i].position.z;
            if (distanceZTargetToCam > 10)
                setFieldOfView = 65;
        }
       /* if (!distance)
        {
           // camDistance = 15;
            dampTime = 0.05f;
            distance = true;
        }*/
        //else
       // {
            dampTime = 0.15f;
        //}
        distanceAll.Clear();
        //Debug.Log("distanceMax : " +distanceMax);
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