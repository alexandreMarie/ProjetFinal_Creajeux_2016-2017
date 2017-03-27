﻿using UnityEngine;
using System.Collections;
using XInputDotNetPure;
public class Player : MonoBehaviour
{
    #region Variables

    bool playerIndexSet = false;
    PlayerIndex playerIndex;
    GamePadState state;
    GamePadState prevState;
    //A VIRER POUR FAIRE LE CLEANUP
    //Mercredi 29 MILESTONE
#pragma warning disable 0414


    [SerializeField]
    bool IsBlinking;

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

    private int special = 0;

    MeshRenderer mr;

    Coroutine fireCo;

    #endregion

    public void Awake()
    {
        m_Rb = GetComponentInChildren<Rigidbody>();
        //m_Tr = GetComponent<Transform>();

        s_Bullet = GetComponent<Add_Bullet>();
        //s_Bullet = GetComponentInChildren<Add_Bullet>();

        mr = GetComponentInChildren<MeshRenderer>();

        life_Bar.UpdateStaminaBar(100, special);
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
        Life = 20;
    }
    //Deplacement en diagonale 
    void MovePlayer()
    {

        if (m_LMoveInputValue_X > 0.1 || m_LMoveInputValue_X < -0.1)
        {
            Vector3 direction = Camera.main.transform.right;

            //timer = Mathf.Clamp(timer + (turnBloom == false ? 1 : -1) * Time.unscaledDeltaTime / duration, 0f, 1f);
            transform.position += ((direction * m_LMoveInputValue_X) * Time.deltaTime * (m_Speed));
            Last_Rotation_X = m_LMoveInputValue_X;

        }

        if (m_LMoveInputValue_Y > 0.1 || m_LMoveInputValue_Y < -0.1)
        {
            Vector3 direction = Camera.main.transform.forward;

            direction.y = 0;
            direction.Normalize();

            transform.position += (direction * Last_Rotation_Y * Time.deltaTime * (m_Speed));

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

    void SpecialShoot(int Numberbullets)
    {
        if (special >= 100)
        {
            s_Bullet.Special_Attack(Numberbullets, transform);
            special = 0;
            life_Bar.UpdateStaminaBar(100, 0);
        }

    }

    void Rotate()
    {
        transform.eulerAngles = new Vector3(0, Last_Angle_Bullet, 0);

    }
    // Update is called once per frame
    void Update()
    {
        timer += Time.unscaledDeltaTime;
       
        if (timer / dashDuration >= 1f)
        {
            if (IsBlinking != true)
            {
                Invicible = false;
            }
        }

        //if(IsBlinking == true && Blinker_time > 0.0f)
        //{
        //    Blinker_time -= Time.deltaTime;
        //    Invicible = true;
        //}

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
            m_LMoveInputValue_X = state.ThumbSticks.Left.X;
            m_LMoveInputValue_Y = state.ThumbSticks.Left.Y;
            m_RMoveInputValue_X = state.ThumbSticks.Right.X;
            m_RMoveInputValue_Y = state.ThumbSticks.Right.Y;

            RAngle = (Mathf.Atan2(-m_RMoveInputValue_X, -m_RMoveInputValue_Y) * Mathf.Rad2Deg);

            if (RAngle != -180)
                Last_Angle_Bullet = RAngle;

            LAngle = (Mathf.Atan2(m_LMoveInputValue_X, -m_LMoveInputValue_Y) * Mathf.Rad2Deg);
            if (LAngle != 180)
                Last_Angle_Player = LAngle;

            if (state.Triggers.Right > 0.8f)
            {
                if (fireCo == null)
                {
                    fireCo = StartCoroutine(PlayerFire(transform, Last_Angle_Bullet));
                }
                Is_Fired = true;
            }
            else
            {
                if (fireCo != null)
                {
                    StopCoroutine(fireCo);
                    fireCo = null;
                }
                //StopAllCoroutines();
                Is_Fired = false;
            }

            if (state.Buttons.A == ButtonState.Pressed)
            {
                SpecialShoot(number_of_bullets_spe_attack);
            }

            if (prevState.Buttons.LeftShoulder == ButtonState.Released && state.Buttons.LeftShoulder == ButtonState.Pressed)
            {
                // equivalent du keydown
                StartCoroutine(Dash());
                Invicible = true;
            }

            switch (ID_Player)
            {
                case PlayerIndex.One:
                   // Debug.Log("Lel1 : " + Life);
                    //Debug.Log(Life);
                    GameManager.Instance.LifePlayer1 = Life;
                    break;

                case PlayerIndex.Two:

                    //Debug.Log("Lel2 : " + Life);
                    GameManager.Instance.LifePlayer2 = Life;
                    break;
            }
            MovePlayer();
            Rotate();
        }
    }

    public void HitByBullet()
    {
        Life -= 1;
        life_Bar.UpdateLifeBar(Life_Max, Life);

        special += 5;
        StartCoroutine(PlayerBlink());
        IsBlinking = true;
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
        special += Stamina_Added;
        life_Bar.UpdateStaminaBar(100, special);
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

    private IEnumerator Dash()
    {
        float timerDash = 0f;
        float startSpeed = m_Speed;
        while ((timerDash / dashDuration) <= 1f)
        {
            timerDash += Time.unscaledDeltaTime;
            m_Speed = startSpeed * dashBehaviour.Evaluate(timerDash / dashDuration);
            yield return new WaitForEndOfFrame();
        }

        m_Speed = startSpeed;
    }

    private IEnumerator PlayerBlink()
    {
        float timerBlink = 0f;
        bool isActive = true;
        Invicible = true;
        IsBlinking = true;
        while (timerBlink <= 0.4f)
        {
            timerBlink += Time.unscaledDeltaTime;
            isActive = !isActive;
            mr.enabled = isActive;
            yield return new WaitForSeconds(0.05f);
            mr.enabled = true;

        }
        IsBlinking = false;
        mr.enabled = true;
        Invicible = false;
    }

    private IEnumerator PlayerFire(Transform transform_player, float Rotation)
    {
        while (true)
        {
            GameObject instantiatedBullet;

            for (int j = 0; j < 5; j++)
            {
                instantiatedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(-90, Last_Angle_Bullet, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, -10);

                instantiatedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(-90, Last_Angle_Bullet, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, -2);
                instantiatedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(-90, Last_Angle_Bullet, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, 0);
                instantiatedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(-90, Last_Angle_Bullet, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, 2);

                instantiatedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(-90, Last_Angle_Bullet, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, 10);

                yield return new WaitForSeconds(0.05f);
            }
            yield return new WaitForSeconds(0.08f);
        }

        yield return null;
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
