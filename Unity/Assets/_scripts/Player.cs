using UnityEngine;

public class Player : MonoBehaviour
{
    public GameObject Bullet;
    Add_Bullet s_Bullet;
    [SerializeField]
    private int m_PlayerNumber = 1;
    [SerializeField]
    private float m_Speed = 1;

    [SerializeField]
    private string m_RMoveAxisName_X;  // Will have the correct axis name according to the player number
    [SerializeField]
    private string m_RMoveAxisName_Y;  // Will have the correct axis name according to the player number

    [SerializeField]
    private string m_LMoveAxisName_X;  // Will have the correct axis name according to the player number
    [SerializeField]
    private string m_LMoveAxisName_Y;  // Will have the correct axis name according to the player number

    private string m_RotateAxisName;
    private Rigidbody m_Rb;
    [SerializeField]
    private Transform m_Tr;
    [SerializeField]
    private string m_LMoveInputValue_RB;
    [SerializeField]
    private string m_LMoveInputValue_RT;
    [SerializeField]
    private float m_RMoveInputValue_X;
    [SerializeField]
    private float m_RMoveInputValue_Y;
    [SerializeField]
    private float m_LMoveInputValue_X;
    [SerializeField]
    private float m_LMoveInputValue_Y;


    [SerializeField]
    float LAngle;
    [SerializeField]
    float RAngle;

    [SerializeField]    
    private float m_RotateInputValue;

    public void Awake()
    {
        m_Rb = GetComponentInChildren<Rigidbody>();
       //m_Tr = GetComponent<Transform>();
        m_Tr = GameObject.FindGameObjectWithTag("Player").transform;
        //s_add_bullet = FindObjectOfType<Add_Bullet>();
        s_Bullet = GetComponentInChildren<Add_Bullet>();
    }

    public void OnEnable()
    {
        m_Rb.isKinematic = false;
        m_RMoveInputValue_X = 0f;
        m_RMoveInputValue_Y = 0f;

        m_LMoveInputValue_X = 0;
        m_LMoveInputValue_Y = 0;

        m_RotateInputValue = 0f;
    }

    public void OnDisable()
    {
        m_Rb.isKinematic = true;
    }

    // Use this for initialization
    void Start()
    {
        m_LMoveAxisName_X = "LSX"; // + m_PlayerNumber
        m_LMoveAxisName_Y = "LSY";

        m_RMoveAxisName_X = "RSX";
        m_RMoveAxisName_Y = "RSY";

        m_LMoveInputValue_RB = "RB";
        m_LMoveInputValue_RT = "A";//Retweet lel
}

    void MovePlayer()
    {

        if (m_LMoveInputValue_X > 0.1 || m_LMoveInputValue_X < -0.1)
        {
            Vector3 direction = Camera.main.transform.right;
            
            m_Tr.position += (direction * m_LMoveInputValue_X * Time.deltaTime * m_Speed);
            
            //Debug.Log(direction);
            Debug.Log("Right : " + Camera.main.transform.right);
            //Debug.Log("Direction X" + direction.x);
            //Debug.Log("Direction X" + -(m_LMoveInputValue_X * Mathf.Sin(45.0f)));
            //Debug.Log(direction * m_LMoveInputValue_X);
        }

        
        if (m_LMoveInputValue_Y > 0.1 || m_LMoveInputValue_Y < -0.1)
        {
            Vector3 direction = Camera.main.transform.forward;
            
            direction.y = 0;
            direction.Normalize();

            m_Tr.position += (((direction * -(m_LMoveInputValue_Y) * Time.deltaTime * m_Speed)));
            Debug.Log("Forward : " + Camera.main.transform.forward);
            // Debug.Log(direction * -m_LMoveInputValue_Y);
            
        }

       
    }

    void Shoot(float Rot)
    {
        //Transform  Temps_Transform = m_Tr;
        //s_add_bullet.Shoot();
     
        s_Bullet.Shoot(Rot);
    }

    void SpecialShoot(int Numberbullets)
    {
        Debug.Log("SpecialShoot");
        s_Bullet.Special_Attack(Numberbullets);
    }

    void Rotate()
    {
        m_Tr.eulerAngles = new Vector3(0, -RAngle,0);
    }
    // Update is called once per frame
    void Update()
    {
        Debug.Log(transform.rotation.y);
        m_LMoveInputValue_X = Input.GetAxisRaw(m_LMoveAxisName_X);
        m_LMoveInputValue_Y = Input.GetAxisRaw(m_LMoveAxisName_Y);

        m_RMoveInputValue_X = Input.GetAxisRaw(m_RMoveAxisName_X);
        m_RMoveInputValue_Y = Input.GetAxisRaw(m_RMoveAxisName_Y);
        RAngle = (Mathf.Atan2(m_RMoveInputValue_X, m_RMoveInputValue_Y) * Mathf.Rad2Deg);
        //Debug.Log(RAngle);
        LAngle = (Mathf.Atan2(m_LMoveInputValue_X, m_LMoveInputValue_Y) * Mathf.Rad2Deg);
        //Debug.Log(LAngle);
        if(Input.GetButton(m_LMoveInputValue_RB))
        {
            Shoot(-RAngle);
        }

        if (Input.GetButton(m_LMoveInputValue_RT))
        {
            SpecialShoot(20);
        }


        MovePlayer();
        Rotate();
       // Debug.Log("Left Stick X Player " + m_PlayerNumber + " = " + m_MoveInputValue_X);
       // Debug.Log("Left Stick Y Player " + m_PlayerNumber + " = " + m_MoveInputValue_Y);
    }
}