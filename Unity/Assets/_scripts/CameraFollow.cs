using UnityEngine;
using System.Collections;

public class CameraFollow : MonoBehaviour {
    
    public float dampTime = 0.15f;
    private Vector3 velocity = Vector3.zero;
    //public Transform []target;
    public Transform target1;
    public Transform target2;

    public float camDistance;

    private Vector3 Midpoint;
    private Vector3 distance;
    private float MidX;
    private float MidY;
    private float MidZ;
    private float CamOffset;
    private float bounds;
    
    [SerializeField]
    private Vector3 gravity;

    // Use this for initialization
    void Start()
    {
        camDistance = 10.0f;
        bounds = 12.0f;
    }

    // Update is called once per frame
    void Update()
    {

        //gravity = Gravity(target, target.Length);







       distance = target1.position - target2.position;
        Debug.Log(distance);
        if (camDistance >= 19.0f)
            camDistance = 19.0f;
        if (camDistance <= 10.0f)
            camDistance = 10.0f;
        if (distance.x < 0)
            distance.x = distance.x * -1;
        if (distance.z < 0)
            distance.z = distance.z * -1;
        if (target1.position.x < (transform.position.x - bounds))
        {
            Vector3 pos = target1.position;
            pos.x = transform.position.x - bounds;
            target1.position = pos;
        }
        if (target2.position.x < (transform.position.x - bounds))
        {
            Vector3 pos = target2.position;
            pos.x = transform.position.x - bounds;
            target2.position = pos;
        }
        if (target1.position.x > (transform.position.x + bounds))
        {
            Vector3 pos = target1.position;
            pos.x = transform.position.x + bounds;
            target1.position = pos;
        }
        if (target2.position.x > (transform.position.x + bounds))
        {
            Vector3 pos = target2.position;
            pos.x = transform.position.x + bounds;
            target2.position = pos;
        }
        if (distance.x > 15.0f)
        {
            CamOffset = distance.x * 0.3f;
            if (CamOffset >= 8.5f)
                CamOffset = 8.5f;
        }
        else if (distance.x < 14.0f)
        {
            CamOffset = distance.x * 0.3f;
        }
        else if (distance.z < 14.0f)
        {
            CamOffset = distance.x * 0.3f;
        }
        MidX = (target2.position.x + target1.position.x) / 2;
        MidY = (target2.position.y + target1.position.y) / 2;
        MidZ = (target2.position.z + target1.position.z) / 2;
        Midpoint = new Vector3(MidX, MidY, MidZ);
        if (target1)
        {
            
            Vector3 delta = Midpoint - GetComponent<Camera>().ViewportToWorldPoint(new Vector3(0.5f, 0.5f, camDistance + CamOffset)); 
            Vector3 destination = transform.position + delta;
            transform.position = Vector3.SmoothDamp(transform.position, destination, ref velocity, dampTime);
        }

    }

    /*Transform Gravity(Transform []target, int sizeArray)
    {
        return;
    }*/
}
