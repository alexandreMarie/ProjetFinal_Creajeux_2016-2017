using UnityEngine;

public class Player : MonoBehaviour
{

    [SerializeField]
    private float Slowed;//Stats apply on the the speed of the player, when he shoot

    [SerializeField]
    private GameObject Bullet;

    [SerializeField]
    private short Nb_Player;// Number of player max

    [SerializeField]
    private short Id_Player; //Id of the connected controller

    Add_Bullet s_Bullet;//Script Add_bullet

    [SerializeField]
    private float m_AngleX = 0;
    [SerializeField]
    private float m_AngleY = 0;

    private int m_PlayerNumber = 1;

    [SerializeField]
    private int Life;//actual life of the player

    [SerializeField]
    private int Life_Max;//Maximum life of the player

    [SerializeField]
    private LifeManager life_Bar;//Prefabs of the life bars on the UI

    [SerializeField]
    private float m_Speed = 1;//Speed of the joueur

    [SerializeField]
    private int number_of_bullets_spe_attack;

    private string  m_RMoveAxisName_X;  // Will have the correct axis name according to the player number
    private string  m_RMoveAxisName_Y;  // Will have the correct axis name according to the player number


    private string m_LMoveAxisName_X;  // Will have the correct axis name according to the player number
    private string m_LMoveAxisName_Y;  // Will have the correct axis name according to the player number

    private string  m_KeyBoard_Axe_X;
    private string  m_KeyBoard_Axe_Y;

    private float m_KeyBoard_X_Value;
    private float m_KeyBoard_Y_Value;

    private string m_RotateAxisName;
    private Rigidbody m_Rb;

    [SerializeField]
    private Transform m_Tr;

    private string  m_LMoveInputValue_RB;

    private string  m_LMoveInputValue_RT;

    private float  m_RMoveInputValue_X;

    private float  m_RMoveInputValue_Y;

    private float  m_LMoveInputValue_X;

    private float  m_LMoveInputValue_Y;

    bool DashButton_Isrealeasd;
    bool Is_Fired;

    [SerializeField]
    float LAngle;
    [SerializeField]
    float RAngle;

    [SerializeField]
    private float m_RotateInputValue;

    private string m_LMoveInputValue_LT;

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
 

        m_RotateInputValue = 0f;

        m_RMoveInputValue_X = 0.0f;
        m_RMoveInputValue_Y = 0.0f;

        m_LMoveInputValue_X = 0.0f;
        m_LMoveInputValue_Y = 0.0f;
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

            m_LMoveInputValue_RB = "RT";
            m_LMoveInputValue_RT = "A";//Retweet lel
            m_LMoveInputValue_LT = "LT";


            m_KeyBoard_Axe_X = "Horizontal";
            m_KeyBoard_Axe_Y = "Vertical";
        

        //else if(Id_Player ==1)
        //{
        //    m_LMoveAxisName_X[Id_Player] = "LSX_J2"; // + m_PlayerNumber
        //    m_LMoveAxisName_Y[Id_Player] = "LSY_J2";

        //    m_RMoveAxisName_X[Id_Player] = "RSX_J2";
        //    m_RMoveAxisName_Y[Id_Player] = "RSY_J2";

        //    m_LMoveInputValue_RB[Id_Player] = "RB_J2";
        //    m_LMoveInputValue_RT[Id_Player] = "A_J2";//Retweet lel

        //    m_KeyBoard_Axe_X[Id_Player] = "Horizontal_P2";
        //    m_KeyBoard_Axe_Y[Id_Player] = "Vertical_P2";
        //}



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
            Vector3 direction = Camera.main.transform.right;
            //Debug.Log("RIGHT :" + Camera.main.transform.forward * m_AngleX);
            if (Is_Fired == false)
            {
                m_Tr.position += ((direction * m_LMoveInputValue_X) * Time.deltaTime * m_Speed);
            }
            else
            {
                m_Tr.position += ((direction * m_LMoveInputValue_X) * Time.deltaTime * m_Speed)/ Slowed;
            }
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
            if (Is_Fired == false)
            {
                m_Tr.position += (((direction * -(m_LMoveInputValue_Y) * Time.deltaTime * m_Speed)));
            }
            else
            {
                m_Tr.position += ((((direction * -(m_LMoveInputValue_Y) * Time.deltaTime * m_Speed)))/ Slowed);
            }

            
                //Debug.Log("Forward : " + Camera.main.transform.forward);
            // Debug.Log(direction * -m_LMoveInputValue_Y);


        }

        ////////////////\\\\\\\\\\\\\\\\\
        //////////!\ CLAVIER /!\\\\\\\\\\\
        ////////////////\\\\\\\\\\\\\\\\\\

        if (m_KeyBoard_X_Value > 0.1 || m_KeyBoard_X_Value < -0.1)
        {
            Vector3 direction = Camera.main.transform.right;
            if (Is_Fired == false)
            {
                m_Tr.position += (direction * m_KeyBoard_X_Value * Time.deltaTime * m_Speed);
            }
            else
            {
                m_Tr.position += ((direction * m_KeyBoard_X_Value * Time.deltaTime * m_Speed)/ Slowed);
            }
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
            if (Is_Fired == false)
            {
                m_Tr.position += (((direction * (m_KeyBoard_Y_Value) * Time.deltaTime * m_Speed)));
            }
            else
            {
                m_Tr.position += ((((direction * (m_KeyBoard_Y_Value) * Time.deltaTime * m_Speed)))/ Slowed);
            }
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


    void Dash()
    {
        transform.position += transform.forward * 20;
    }
    void Rotate()
    {
        m_Tr.eulerAngles = new Vector3(0, -LAngle, 0);
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
        //if (Id_Player == 0)
        //{
        //    Debug.Log(RAngle);
        //}
        LAngle = (Mathf.Atan2(m_LMoveInputValue_X, m_LMoveInputValue_Y) * Mathf.Rad2Deg);
        //Debug.Log(LAngle);

        m_KeyBoard_X_Value = Input.GetAxisRaw(m_KeyBoard_Axe_X);
        m_KeyBoard_Y_Value = Input.GetAxisRaw(m_KeyBoard_Axe_Y);
        Debug.Log("Valeur de l'axis RT" + Input.GetAxis(m_LMoveInputValue_RB));


        if (Input.GetAxis(m_LMoveInputValue_RB ) > 0.0f)
        {
            Shoot(-RAngle);
            Is_Fired = true;
        }
        else
        {
            Is_Fired = false;
        }

<<<<<<< HEAD

        Debug.Log("Is_fireded" + Is_Fired);

=======
        if (Input.GetButton("Fire1"))
        {
            Shoot(90);
        }
>>>>>>> 7debedbeba009f79efc586c53bd33e7e0e81450b

        if (Input.GetButton(m_LMoveInputValue_RT))
        {
            SpecialShoot(number_of_bullets_spe_attack);//Special attack function
        }

        if(Input.GetButton(m_LMoveInputValue_LT))
        {
            /*
            When dash button is pressed 
            the bool "DashButton_Isrealeasd" set to false

            and he was only set at true whene the dash button is releasd 
            */
            if (DashButton_Isrealeasd == true)
            {
                Dash();//Dash Function
                DashButton_Isrealeasd = false;
            }
            if(Input.GetButtonDown(m_LMoveInputValue_LT))
            {
                DashButton_Isrealeasd = true;
            }
        }

        MovePlayer();//Movement of the player
        Rotate();//Rotation of the player


        // Debug.Log("Left Stick X Player " + m_PlayerNumber + " = " + m_MoveInputValue_X);
        // Debug.Log("Left Stick Y Player " + m_PlayerNumber + " = " + m_MoveInputValue_Y);
    }
    public void HitByBullet()
    {
        Life -= 1;
        life_Bar.UpdateLifeBar(Life_Max, Life);
        //Debug.Log("Hit ! \n Life : " + Life);
    }
}



///Gestion du dash
//Donc, un dash, c'est un mouvement direct, dans une direction donner
//Etape 1 : Demander a seb'
//Etape 2 : faire quelque chose
//Etape 3 : RE-demander a seb' (si il refuse, tentative de corruption avec du café)

/*
Plus serieusement 

    Etape 1 : definir dans quelle direction se situe le personnage
    Etape 2 : quand appuye sur un imput (R2, la grosse gachette)
    le personnage fait une transition droite devant lui sur une position donner
    
*/


    /**
    Priorité 1 : le Dash //En cours et bien avancer
    Priorité 2 : faire des tires en cones //Ok
    Priotité 3 : tools mapping //Gné ?

    équilibrage : ralentir la vitesse du perso quand on tire//Ok
    
    feedback : le hit //
    
    Bonus : Gameplay J2
    */
