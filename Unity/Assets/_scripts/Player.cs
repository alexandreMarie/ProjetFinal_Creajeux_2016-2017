using UnityEngine;
using System.Collections;
using XInputDotNetPure;
public class Player : MonoBehaviour
{

    bool playerIndexSet = false;
    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;
    //A VIRER POUR FAIRE LE CLEANUP
    //Mercredi 29 MILESTONE
#pragma warning disable 0414

    [SerializeField]
    bool Invicible;

    [SerializeField]
    int Distance_moved;

    [SerializeField]
    int Regen_Stamina;
    int Distance_Maked;


    [SerializeField]
    private GameObject bullet;

    //[SerializeField]
    Add_Bullet s_Bullet;

    bool DashButton_Isrealeasd;
    bool Is_Fired;


    float Last_Rotation_X;

    float Last_Rotation_Y;

    float Last_Angle_Player;

    float Last_Angle_Bullet;

    [SerializeField]
    private float Slowed;//Stats apply on the the speed of the player, when he shoot

    private float m_AngleX = 0;

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

    [SerializeField]
    PlayerIndex ID_Player;

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
    [Range(0.1f, 1f)]
    private float dashDuration = 1f;

    float timer = 0f;

    [SerializeField]
    private AnimationCurve dashBehaviour;

    private string m_LMoveInputValue_LT;

    private string m_LMoveInputValue_RB;

    private string m_LMoveInputValue_A;

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

        s_Bullet = GetComponent<Add_Bullet>();
        //s_Bullet = GetComponentInChildren<Add_Bullet>();
    }

    public void OnEnable()
    {
        m_Rb.isKinematic = false;
        m_RMoveInputValue_X = 0f;
        m_RMoveInputValue_Y = 0f;

        m_LMoveInputValue_X = 0;
        m_LMoveInputValue_Y = 0;

        m_RotateInputValue = 0f;

        m_KeyBoard_X_Value = 0f;
        m_KeyBoard_Y_Value = 0f;

    }

    public void OnDisable()
    {
        m_Rb.isKinematic = true;
    }

    // Use this for initialization
    void Start()
    {

    }
    //Deplacement en diagonale 
    void MovePlayer()
    {

        if (m_LMoveInputValue_X > 0.1 || m_LMoveInputValue_X < -0.1)
        {
            Vector3 direction = Camera.main.transform.right;

            //timer = Mathf.Clamp(timer + (turnBloom == false ? 1 : -1) * Time.unscaledDeltaTime / duration, 0f, 1f);
            transform.position += ((direction * m_LMoveInputValue_X) * Time.deltaTime * (m_Speed * dashBehaviour.Evaluate(timer / dashDuration)));
            Last_Rotation_X = m_LMoveInputValue_X;

        }

        if (m_LMoveInputValue_Y > 0.1 || m_LMoveInputValue_Y < -0.1)
        {
            Vector3 direction = Camera.main.transform.forward;

            direction.y = 0;
            direction.Normalize();

            transform.position += (direction * Last_Rotation_Y * Time.deltaTime * (m_Speed * dashBehaviour.Evaluate(timer / dashDuration)));

            Last_Rotation_Y = m_LMoveInputValue_Y;

        }

        #region CommentairesClavier
        ////////////////\\\\\\\\\\\\\\\\\
        //////////!\ CLAVIER /!\\\\\\\\\\\
        ////////////////\\\\\\\\\\\\\\\\\\

        //if (m_KeyBoard_X_Value > 0.1 || m_KeyBoard_X_Value < -0.1)
        //{
        //    Vector3 direction = Camera.main.transform.right;

        //    if (Is_Fired == false)
        //    {
        //        position += (((direction * (m_KeyBoard_X_Value) * Time.deltaTime * m_Speed)));
        //    }
        //    else
        //    {
        //        position += ((((direction * (m_KeyBoard_X_Value) * Time.deltaTime * m_Speed))) / Slowed);
        //    }
        //}

        //if (m_KeyBoard_Y_Value > 0.1 || m_KeyBoard_Y_Value < -0.1)
        //{
        //    Vector3 direction = Camera.main.transform.forward;

        //    direction.y = 0;
        //    direction.Normalize();

        //    if (Is_Fired == false)
        //    {
        //        position += (((direction * (m_KeyBoard_Y_Value) * Time.deltaTime * m_Speed)));
        //    }
        //    else
        //    {
        //        position += ((((direction * (m_KeyBoard_Y_Value) * Time.deltaTime * m_Speed))) / Slowed);
        //    }

        //} 
        #endregion
    }

    void Shoot(float Rot)
    {
        //s_Bullet.Shoot(Rot,m_Tr);
        if (!Is_Fired)
            StartCoroutine(PlayerFire(transform, Rot));
    }

    void SpecialShoot(int Numberbullets)
    {
        Debug.Log("SpecialShoot");
        if (Regen_Stamina >= 500)
        {
            s_Bullet.Special_Attack(Numberbullets, transform);
            Regen_Stamina = 0;
            life_Bar.UpdateStaminaBar(500, 0);
        }

    }

    void Rotate()
    {
        transform.eulerAngles = new Vector3(0, -Last_Angle_Player, 0);

    }
    // Update is called once per frame
    void Update()
    {

        timer += Time.unscaledDeltaTime;

        if (!playerIndexSet || !prevState.IsConnected)
        {

            PlayerIndex testPlayerIndex = ID_Player;
            GamePadState testState = GamePad.GetState(testPlayerIndex);
            if (testState.IsConnected)
            {
                Debug.Log(string.Format("GamePad found {0}", testPlayerIndex));
                playerIndex = testPlayerIndex;
                playerIndexSet = true;
            }

        }

        prevState = state;
        state = GamePad.GetState(playerIndex);

        if (playerIndex == ID_Player)
        {


            //Debug.Log(transform.rotation.y);


            m_LMoveInputValue_X = state.ThumbSticks.Left.X;
            // Last_Rotation_Y = m_LMoveInputValue_Y;
            m_LMoveInputValue_Y = state.ThumbSticks.Left.Y;
            m_RMoveInputValue_X = state.ThumbSticks.Right.X;
            m_RMoveInputValue_Y = state.ThumbSticks.Right.Y;


            RAngle = (Mathf.Atan2(-m_RMoveInputValue_X, -m_RMoveInputValue_Y) * Mathf.Rad2Deg);

            if (/*RAngle > 1.0f || RAngle < -1.0f*/ RAngle != -180)
                Last_Angle_Bullet = RAngle;
            //Debug.Log(RAngle);

            LAngle = (Mathf.Atan2(m_LMoveInputValue_X, -m_LMoveInputValue_Y) * Mathf.Rad2Deg);
            if (/*LAngle > 1.0f || LAngle < -1.0f*/ LAngle != 180)
                Last_Angle_Player = LAngle;
            //Debug.Log(LAngle);


            //m_KeyBoard_X_Value = Input.GetAxisRaw(m_KeyBoard_Axe_X);
            //m_KeyBoard_Y_Value = Input.GetAxisRaw(m_KeyBoard_Axe_Y);

            //Debug.Log(m_LMoveInputValue_RB + " - " + Input.GetAxis(m_LMoveInputValue_RB));
            if (state.Triggers.Right > 0.2f)
            {
                Shoot(Last_Angle_Bullet);
                Is_Fired = true;
            }
            else
            {
                StopAllCoroutines();
                Is_Fired = false;
            }



            //if (Input.GetButton(m_LMoveInputValue_RB))
            //{
            //    Debug.Log(m_LMoveInputValue_RB);
            //    Shoot(90);
            //}

            if (state.Buttons.A == ButtonState.Pressed)
            {
                SpecialShoot(number_of_bullets_spe_attack);
            }

            if (prevState.Buttons.LeftShoulder == ButtonState.Released && state.Buttons.LeftShoulder == ButtonState.Pressed)
            {
                // equivalent du keydown
                Dash();
            }


            if (Distance_Maked <= Distance_Max)
            {
                //Debug.Log("Dash Test");
                Dash();//Dash Function
                if (Distance_Maked > 1 && Distance_Maked < Distance_Max)
                {
                    Set_Invicible(true);
                }
                else
                {
                    Set_Invicible(false);
                }
                Distance_Maked += 1;

            }
            //if (state.Buttons.LeftShoulder == ButtonState.Pressed)
            //{
            //    /*
            //    When dash button is pressed 
            //    the bool "DashButton_Isrealeasd" set to false

            //    and he was only set at true whene the dash button is releasd 
            //    */
            //    if (DashButton_Isrealeasd == true && CoolDown_Dash <= 0)
            //    {
            //        Distance_Maked = 0;
            //        CoolDown_Dash = 1;
            //        DashButton_Isrealeasd = false;
            //    }
            //    if (state.Buttons.LeftShoulder == ButtonState.Pressed)
            //    {
            //        DashButton_Isrealeasd = true;
            //    }
            //}
            //if (CoolDown_Dash > 0)
            //{
            //    CoolDown_Dash -= Time.deltaTime;
            //}

            MovePlayer();
            Rotate();
        }
        // Debug.Log("Left Stick X Player " + m_PlayerNumber + " = " + m_MoveInputValue_X);
        // Debug.Log("Left Stick Y Player " + m_PlayerNumber + " = " + m_MoveInputValue_Y);
    }

    void Dash()
    {
        timer = 0f;
        //transform.position += transform.forward * 3;
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

    private IEnumerator Freeze()
    {
        Player controls = GetComponent<Player>();

        controls.enabled = false;
        GetComponentInChildren<Renderer>().material.color = Color.white;

        yield return new WaitForSeconds(2.0f);

        controls.enabled = true;
        GetComponentInChildren<Renderer>().material.color = Color.grey;
    }

    public void FreezePlayer()
    {
        StartCoroutine(Freeze());
    }

    private IEnumerator PlayerFire(Transform transform_player, float Rotation)
    {
        while (true)
        {
            Vector3 PosBalle = new Vector3(transform.position.x, transform.position.y, transform.position.z);

            //  Vector3 PosBalle = new Vector3(transform.position.x, transform.position.y + 20, transform.position.z);

            Quaternion Quater_Bullet = transform.rotation;
            Quater_Bullet.y = 0;
            GameObject instantiatedBullet;

            for (int j = 0; j < 5; j++)
            {
                instantiatedBullet = Instantiate(bullet, PosBalle, Quaternion.Euler(-90, Last_Angle_Bullet, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, -10);

                instantiatedBullet = Instantiate(bullet, PosBalle, Quaternion.Euler(-90, Last_Angle_Bullet, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, -2);
                instantiatedBullet = Instantiate(bullet, PosBalle, Quaternion.Euler(-90, Last_Angle_Bullet, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, 0);
                instantiatedBullet = Instantiate(bullet, PosBalle, Quaternion.Euler(-90, Last_Angle_Bullet, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, 2);

                instantiatedBullet = Instantiate(bullet, PosBalle, Quaternion.Euler(-90, Last_Angle_Bullet, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, 10);
                yield return new WaitForSeconds(0.05f);
            }
            yield return new WaitForSeconds(0.1f);
        }
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

/*
Conserver l'axis de la valeur précédente,
*/
