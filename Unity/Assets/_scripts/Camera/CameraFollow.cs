using UnityEngine;
using System.Collections.Generic;
using System.Collections;

public class CameraFollow : MonoBehaviour {
    
    public float dampTime = 0.15f;
    private Vector3 velocity = Vector3.zero;
    public Transform[] targets;

    public float camDistance;

    private float MidX;
    private float MidY;
    private float MidZ;
    private float CamOffset;
    private float bounds;
    private float distanceMax;
    private List<float> distanceAll = new List<float>();
    private float rotateCam;
    private Quaternion camRotation = new Quaternion(0,180,0,0);
    private int setFieldOfView;

    [SerializeField]
    private Vector3 gravity;

 

    void Start()
    {
        camDistance = 100.0f;
        bounds = 12.0f;
    }

    // Update is called once per frame
    void Update()
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

   

    void DistanceMax()
    {
        distanceMax = 0;
        int cpt = 0;

        for (int i = 0; i < targets.Length; i++)
        {

            if (targets[i] != targets[targets.Length-1]) // Condition pour que la dernière target du tableau ne passe pas dans la boucle
            {
                for (int y = i + 1; y < targets.Length; y++)
                {
                    distanceAll.Add(Vector3.Distance(targets[i].position, targets[y].position));
                    cpt++;
                }
            }
            
        }

       
        for (int i = 0; i<distanceAll.Count;i++)
            distanceMax = Mathf.Max(distanceMax, distanceAll[i]);
            CamOffset = distanceMax * 0.9f;
        
        if (distanceMax < 140)
        {
            rotateCam = 65.0f;
        }
        else if(distanceMax >280)
        {
            rotateCam = 35.0f;
        }
        else
        {
            rotateCam = 50.0f;
        }
        if(distanceMax < 150)
            setFieldOfView = 60;
        for (int i = 0; i < targets.Length; i++)
        {
            float distanceZTargetToCam = transform.position.z - targets[i].position.z;
            if (distanceZTargetToCam < 20)
                setFieldOfView = 65;

        }
        

        distanceAll.Clear();
       
    }

   
    void Gravity()
    {
        float posX = 0;
        float posY = 0;
        float posZ = 0;
        
        for(int i = 0; i< targets.Length; i++)
        {
            posX += targets[i].position.x ;
            posY += targets[i].position.y;
            posZ += targets[i].position.z;
        }
        posX = posX  / targets.Length;
        posY = posY/ targets.Length;
        posZ = posZ / targets.Length;

        gravity = new Vector3(posX, posY, posZ);
    }
}



/*float distanceP1ToP2 = Vector3.Distance(player[0].position, player[1].position);
        float distanceP1ToBoss = Vector3.Distance(player[0].position, boss.position);
        float distanceP2ToBoss = Vector3.Distance(player[1].position, boss.position);
        currentDistanceMax = Mathf.Max(distanceP1ToP2, distanceP1ToBoss);
        distanceMax = Mathf.Max(currentDistanceMax, distanceP2ToBoss);

        if(distanceP1ToP2 == distanceMax )
        {
           

            CamOffset = distanceP1ToP2 * 0.6f;

        }
        else if (distanceP1ToBoss == distanceMax )
        {

           CamOffset = distanceP1ToBoss * 0.6f;

        }
        else if (distanceP2ToBoss == distanceMax )
        {
           

            CamOffset = distanceP2ToBoss * 0.6f;

        }*/








