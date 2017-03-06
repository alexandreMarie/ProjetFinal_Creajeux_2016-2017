using UnityEngine;
using UnityEditor;
public class Player : MonoBehaviour
{
    //A VIRER POUR FAIRE LE CLEANUP
#pragma warning disable 0414

    [SerializeField]
    bool Invicible;

    [SerializeField]
    int Distance_moved;

    [SerializeField]
    int Regen_Stamina;
    int Distance_Maked;


    [SerializeField]
    private GameObject Bullet;

    Add_Bullet s_Bullet;

    bool DashButton_Isrealeasd;
    bool Is_Fired;

    [SerializeField]
    private float Slowed;//Stats apply on the the speed of the player, when he shoot

    [SerializeField]
    private float m_AngleX = 0;
    [SerializeField]
    private float m_AngleY = 0;

    private int m_PlayerNumber = 1;

    [SerializeField]
    private int Life;

    [SerializeField]
    private int Life_Max;

    [SerializeField]
    private LifeManager life_Bar;

    [SerializeField]
    private float m_Speed = 1;

    [SerializeField]
    private int number_of_bullets_spe_attack;

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

    [SerializeField]
    private float CoolDown_Dash;

    [SerializeField]
    private Transform m_Tr;

    private string m_LMoveInputValue_LT;

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


    [Range(10, 20)]
    public int Distance_Max = 0;
    //    public Slider Frame_Of_Invicibility;

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

        m_LMoveInputValue_LT = "LB";
        m_LMoveInputValue_RB = "RB";
        m_LMoveInputValue_RT = "A";//Retweet lel

        m_KeyBoard_Axe_X = "Horizontal";
        m_KeyBoard_Axe_Y = "Vertical";

       
    }
    //Deplacement en diagonale 
    void MovePlayer()
    {


        if (m_LMoveInputValue_X > 0.1 || m_LMoveInputValue_X < -0.1)
        {
            Vector3 direction = Camera.main.transform.right;
          
            m_Tr.position += ((direction * m_LMoveInputValue_X) * Time.deltaTime * m_Speed);


        }


        if (m_LMoveInputValue_Y > 0.1 || m_LMoveInputValue_Y < -0.1)
        {
            Vector3 direction = Camera.main.transform.forward;

            direction.y = 0;
            direction.Normalize();




            m_Tr.position += (((direction * -(m_LMoveInputValue_Y) * Time.deltaTime * m_Speed)));



        }

        ////////////////\\\\\\\\\\\\\\\\\
        //////////!\ CLAVIER /!\\\\\\\\\\\
        ////////////////\\\\\\\\\\\\\\\\\\

        if (m_KeyBoard_X_Value > 0.1 || m_KeyBoard_X_Value < -0.1)
        {
            Vector3 direction = Camera.main.transform.right;

            if (Is_Fired == false)
            {
                m_Tr.position += (((direction * (m_KeyBoard_X_Value) * Time.deltaTime * m_Speed)));
            }
            else
            {
                m_Tr.position += ((((direction * (m_KeyBoard_X_Value) * Time.deltaTime * m_Speed))) / Slowed);
            }

        }

        if (m_KeyBoard_Y_Value > 0.1 || m_KeyBoard_Y_Value < -0.1)
        {
            Vector3 direction = Camera.main.transform.forward;

            direction.y = 0;
            direction.Normalize();



            if (Is_Fired == false)
            {
                m_Tr.position += (((direction * (m_KeyBoard_Y_Value) * Time.deltaTime * m_Speed)));
            }
            else
            {
                m_Tr.position += ((((direction * (m_KeyBoard_Y_Value) * Time.deltaTime * m_Speed))) / Slowed);
            }
          
        }


    }

    void Shoot(float Rot)
    {

        s_Bullet.Shoot(Rot);
    }

    void SpecialShoot(int Numberbullets)
    {
        Debug.Log("SpecialShoot");
        if(Regen_Stamina >= 500)
        {
            s_Bullet.Special_Attack(Numberbullets);
            Regen_Stamina = 0;
            life_Bar.UpdateStaminaBar(500, 0);
        }
      
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
        //Debug.Log(RAngle);
        LAngle = (Mathf.Atan2(m_LMoveInputValue_X, m_LMoveInputValue_Y) * Mathf.Rad2Deg);
        //Debug.Log(LAngle);

        m_KeyBoard_X_Value = Input.GetAxisRaw(m_KeyBoard_Axe_X);
        m_KeyBoard_Y_Value = Input.GetAxisRaw(m_KeyBoard_Axe_Y);

        if (Input.GetAxis(m_LMoveInputValue_RB) > 0.0f)
        {
            Shoot(-RAngle);
            Is_Fired = true;
        }
        else
        {
            Is_Fired = false;
        }

      

        if (Input.GetButton("Fire1"))
        {
          
            Shoot(90);
        }
        
        if (Input.GetButton(m_LMoveInputValue_RT))
        {
            SpecialShoot(number_of_bullets_spe_attack);
        }

        if (Distance_Maked < Distance_Max)
        {
            //Debug.Log("Dash Test");
            Dash();//Dash Function
            if (Distance_Maked > 1  && Distance_Maked < Distance_Max)
            {
                Set_Invicible(true);
            }
            else
            {
                Set_Invicible(false);
            }
            Distance_Maked +=  1;
  
        }
        if (Input.GetButton(m_LMoveInputValue_LT))
        {
            /*
            When dash button is pressed 
            the bool "DashButton_Isrealeasd" set to false

            and he was only set at true whene the dash button is releasd 
            */
            if (DashButton_Isrealeasd == true && CoolDown_Dash <= 0)
            {
                Distance_Maked = 0;
                CoolDown_Dash = 5;
                DashButton_Isrealeasd = false;
            }
            if (Input.GetButtonDown(m_LMoveInputValue_LT))
            {
                DashButton_Isrealeasd = true;
            }
        }
        if(CoolDown_Dash > 0)
        {
            CoolDown_Dash -= Time.deltaTime;
        }

        MovePlayer();
        Rotate();
        // Debug.Log("Left Stick X Player " + m_PlayerNumber + " = " + m_MoveInputValue_X);
        // Debug.Log("Left Stick Y Player " + m_PlayerNumber + " = " + m_MoveInputValue_Y);
    }
    void Dash()
    {
        transform.position += transform.forward  * 3;
    }
    public void HitByBullet()
    {
        Life -= 1;
        life_Bar.UpdateLifeBar(Life_Max, Life);
        //Debug.Log("Hit ! \n Life : " + Life);
    }

    public bool Get_Invicible()
    {
        return Invicible;
    }

    public void Set_Invicible(bool _State)
    {
        Invicible = _State;
    }

    public void Add_Stamina(int Stamina_Added)
    {
        Regen_Stamina += Stamina_Added;
        life_Bar.UpdateStaminaBar(500, Regen_Stamina);
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
