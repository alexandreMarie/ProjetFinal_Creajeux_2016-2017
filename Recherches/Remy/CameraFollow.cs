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

    [SerializeField]
    private Vector3 gravity;

    // Use this for initialization
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
            Vector3 destination = transform.position + delta;
           transform.position = Vector3.SmoothDamp(transform.position, destination, ref velocity, dampTime);
        

    }

    void DistanceMax()
    {
        distanceMax = 0;
        int y;
        int cpt = 0;
        for (int i = 0; i < targets.Length; i++)
        {

            if (targets[i] != targets[targets.Length-1]) // Condition pour que la dernière target du tableau ne passe pas dans la boucle
            {
                for (y = i + 1; y < targets.Length; y++)
                {
                    distanceAll.Add(Vector3.Distance(targets[i].position, targets[y].position));
                    cpt++;
                }
            }
        }

        for(int i = 0; i<distanceAll.Count;i++)
            distanceMax = Mathf.Max(distanceMax, distanceAll[i]);

        CamOffset = distanceMax * 0.6f;

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








