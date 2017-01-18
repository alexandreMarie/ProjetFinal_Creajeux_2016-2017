using UnityEngine;

public class CameraControl : MonoBehaviour
{
    public float m_DampTime = 0.2f;                 
    public float m_ScreenEdgeBuffer = 4f;           
    public float m_MinSize = 6.5f;                  
    /*[HideInInspector]*/ public Transform[] m_Targets; 


    private Camera m_Camera;                        
    private float m_ZoomSpeed;                      
    private Vector3 m_MoveVelocity;                 
    private Vector3 m_DesiredPosition;              


    private void Awake()
    {
        // Attention : it well return the first child component if you want to find component in a specific child use GetComponents or set a public variable
        m_Camera = GetComponentInChildren<Camera>(); 
    }


    private void FixedUpdate()
    {
        // Our camera has no rigidbody but still got to be sync so we put the Move and Zoom in the FixedUpdate
        Move();
        Zoom();
    }


    private void Move()
    {
        FindAveragePosition();

        transform.position = Vector3.SmoothDamp(transform.position, m_DesiredPosition, ref m_MoveVelocity, m_DampTime);
    }


    private void FindAveragePosition()
    {
        Vector3 averagePos = new Vector3();
        int numTargets = 0;

        for (int i = 0; i < m_Targets.Length; i++)
        {
            if (!m_Targets[i].gameObject.activeSelf)
                continue;

            averagePos += m_Targets[i].position;
            numTargets++;
        }

        if (numTargets > 0)
            averagePos /= numTargets;

        averagePos.y = transform.position.y;

        m_DesiredPosition = averagePos;
    }


    private void Zoom()
    {
        float requiredSize = FindRequiredSize();
        m_Camera.orthographicSize = Mathf.SmoothDamp(m_Camera.orthographicSize, requiredSize, ref m_ZoomSpeed, m_DampTime);
    }


    private float FindRequiredSize()
    {
        Vector3 desiredLocalPos = transform.InverseTransformPoint(m_DesiredPosition); // get the m_DesiredPosition (its values are in World space) in the cameraRig's local space

        float size = 0f;

        for (int i = 0; i < m_Targets.Length; i++)
        {
            if (!m_Targets[i].gameObject.activeSelf)
                continue; // don't take in charge the destroyed tanks

            Vector3 targetLocalPos = transform.InverseTransformPoint(m_Targets[i].position); // get the tanks position in the rig's local space

            // that method bring the tank's local posiotn into the plane screen (Y = size screen; X = size * aspect ratio (16/9) )
            Vector3 desiredPosToTarget = targetLocalPos - desiredLocalPos; // tanks cameraRig's local position - averagePos cameraRig's local position 

            // if Y is bigger size = Y axis , otherwise size = X axis
            // that prevent the case when the tanks are further in the X axis or the Y axis
            size = Mathf.Max (size, Mathf.Abs (desiredPosToTarget.y));

            size = Mathf.Max (size, Mathf.Abs (desiredPosToTarget.x) / m_Camera.aspect);
        }
        
        // add an offset of "zoom" to prevent a tank being on the screen's edge
        size += m_ScreenEdgeBuffer;

        // To prevent not to zoom in to close
        size = Mathf.Max(size, m_MinSize);

        return size;
    }


    public void SetStartPositionAndSize()
    {
        FindAveragePosition();

        transform.position = m_DesiredPosition;

        m_Camera.orthographicSize = FindRequiredSize();
    }
}