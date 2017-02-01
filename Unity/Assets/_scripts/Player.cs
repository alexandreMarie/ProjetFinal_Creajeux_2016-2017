using UnityEngine;

public class Player : MonoBehaviour
{
    [SerializeField]
    private GameObject Bullet;

    Add_Bullet s_Bullet;

    [SerializeField]
    private float m_AngleX = 0;
    [SerializeField]
    private float m_AngleY = 0;

    private int m_PlayerNumber = 1;

    [SerializeField]
    private float m_Speed = 1;

   
    private string m_RMoveAxisName_X;  // Will have the correct axis name according to the player number
    private string m_RMoveAxisName_Y;  // Will have the correct axis name according to the player number

   
    private string m_LMoveAxisName_X;  // Will have the correct axis name according to the player number
    private string m_LMoveAxisName_Y;  // Will have the correct axis name according to the player number

    private string m_KeyBoard_Axe_X;
    private string m_KeyBoard_Axe_Y;

    private float m_KeyBoard_X_Value;
    private float m_KeyBoard_Y_Value;

    private string m_RotateAxisName;
    private Rigidbody m_Rb;

    private Transform m_Tr;

    private string m_LMoveInputValue_RB;
    
    private string m_LMoveInputValue_RT;

    private float m_RMoveInputValue_X;

    private float m_RMoveInputValue_Y;
 
    private float m_LMoveInputValue_X;
 
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

        m_KeyBoard_Axe_X = "Horizontal";
        m_KeyBoard_Axe_Y = "Vertical";

}
    //Deplacement en diagonale 
    void MovePlayer()
    {
        //if (m_LMoveInputValue_X > 2 || m_LMoveInputValue_X < 2)
        //{
        //    Vector3 direction = Camera.main.transform.right;

        //    direction.x = 0;
        //    direction.Normalize();
        //    m_Tr.position += ((direction * m_LMoveInputValue_X) * Time.deltaTime * m_Speed);
        //    //Debug.Log(direction * m_LMoveInputValue_X);
        //}

        //if (m_LMoveInputValue_Y > 2 || m_LMoveInputValue_Y < 2)

        if (m_LMoveInputValue_X > 0.1 || m_LMoveInputValue_X < -0.1)
        {
            Vector3 direction = Camera.main.transform.right ;
            //Debug.Log("RIGHT :" + Camera.main.transform.forward * m_AngleX);
            m_Tr.position += ((direction * m_LMoveInputValue_X) * Time.deltaTime * m_Speed);
            
            //Debug.Log(direction);
            //Debug.Log("Right : " + Camera.main.transform.right);
            //Debug.Log("Direction X" + direction.x);
            //Debug.Log("Direction X" + -(m_LMoveInputValue_X * Mathf.Sin(45.0f)));
            //Debug.Log(direction * m_LMoveInputValue_X);
        }

        
        if (m_LMoveInputValue_Y > 0.1 || m_LMoveInputValue_Y < -0.1)
        {
            Vector3 direction = Camera.main.transform.forward;
            //direction /= -1;
            //Debug.Log("Forward :" + Camera.main.transform.forward * m_AngleY);
            direction.y = 0;
            direction.Normalize();


           // m_Tr.position += (((direction * -m_LMoveInputValue_Y)) * Time.deltaTime * m_Speed);
           // Debug.Log(direction * -m_LMoveInputValue_Y);

            m_Tr.position += (((direction * -(m_LMoveInputValue_Y)  * Time.deltaTime * m_Speed)));
            //Debug.Log("Forward : " + Camera.main.transform.forward);
            // Debug.Log(direction * -m_LMoveInputValue_Y);
            

        }
  
        ////////////////\\\\\\\\\\\\\\\\\
        //////////!\ CLAVIER /!\\\\\\\\\\\
        ////////////////\\\\\\\\\\\\\\\\\\

        if(m_KeyBoard_X_Value > 0.1 || m_KeyBoard_X_Value < -0.1)
        {
            Vector3 direction = Camera.main.transform.right;

            m_Tr.position += (direction * m_KeyBoard_X_Value * Time.deltaTime * m_Speed);

            //Debug.Log(direction);
            //Debug.Log("Right : " + Camera.main.transform.right);
        }

        if (m_KeyBoard_Y_Value > 0.1 || m_KeyBoard_Y_Value < -0.1)
        {
            Vector3 direction = Camera.main.transform.forward;

            direction.y = 0;
            direction.Normalize();


           //m_Tr.position += (((direction * -m_KeyBoard_Y_Value) * Time.deltaTime * m_Speed));
            // Debug.Log(direction * -m_LMoveInputValue_Y);

            m_Tr.position += (((direction * (m_KeyBoard_Y_Value) * Time.deltaTime * m_Speed)));
           // Debug.Log("Forward : " + Camera.main.transform.forward);
        }


    }

    void Shoot(float Rot)
    {
        //Transform  Temps_Transform = m_Tr;
        //s_add_bullet.Shoot();
        //s_Bullet.Shoot(Rot);
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
        //Debug.Log(transform.rotation.y);
        m_LMoveInputValue_X = Input.GetAxisRaw(m_LMoveAxisName_X);
        m_LMoveInputValue_Y = Input.GetAxisRaw(m_LMoveAxisName_Y);

        m_RMoveInputValue_X = Input.GetAxisRaw(m_RMoveAxisName_X);
        m_RMoveInputValue_Y = Input.GetAxisRaw(m_RMoveAxisName_Y);
        RAngle = (Mathf.Atan2(m_RMoveInputValue_X, m_RMoveInputValue_Y) * Mathf.Rad2Deg);
        //Debug.Log(RAngle);
        LAngle = (Mathf.Atan2(m_LMoveInputValue_X, m_LMoveInputValue_Y) * Mathf.Rad2Deg);
        //Debug.Log(LAngle);

        m_KeyBoard_X_Value = Input.GetAxisRaw(m_KeyBoard_Axe_X);
        m_KeyBoard_Y_Value = Input.GetAxisRaw(m_KeyBoard_Axe_Y);
        if (Input.GetButton(m_LMoveInputValue_RB))
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



///Gestion du dash
//Donc, un dash, c'est un mouvement direct, dans une direction donner
//Etape 1 : Demander a seb'
//Etape 2 : faire quelque chose
//Etape 3 : RE-demander a seb' (si il refuse, tentative de corruption avec du café

/*
Plus serieusement 

    Etape 1 : definir dans quelle direction se situe le personnage
    Etape 2 : quand appuye sur un imput (R2, la grosse gachette)
    le personnage fait une transition droite devant lui sur une position donner
    
*/