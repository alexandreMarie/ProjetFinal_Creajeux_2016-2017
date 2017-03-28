using System.Collections;
using UnityEngine;
using XInputDotNetPure;

public class Player : MonoBehaviour
{
    #region Variables
    private bool playerIndexSet = false;

    private PlayerIndex playerIndex;

    private GamePadState state;
    private GamePadState prevState;

    private bool isBlinking;
    private bool isInvincible;

    [SerializeField]
    private GameObject bullet = null;

    private Add_Bullet s_Bullet;

    private float lastRotationY;

    private float lastBulletAngle;

    [SerializeField]
    private int life;
    private int maxLife;

    [SerializeField]
    private LifeManager lifeBar = null;

    [SerializeField]
    private float speed = 1.0f;

    [SerializeField]
    private int bulletQtySpecialAttack = 0;

    [SerializeField]
    PlayerIndex playerID = PlayerIndex.One;

    [SerializeField]
    [Range(0.1f, 1f)]
    private float dashDuration = 1f;

    float timer = 0f;

    [SerializeField]
    private AnimationCurve dashBehaviour = null;

    private float m_RMoveInputValue_X;
    private float m_RMoveInputValue_Y;

    private float m_LMoveInputValue_X;
    private float m_LMoveInputValue_Y;
    float RAngle;

    [Range(10, 20)]
    public int maxDistance = 0;

    private int specialGauge = 0;

    MeshRenderer meshRenderer;

    Coroutine fireCoroutine;

    #endregion

    public void Awake()
    {
        maxLife = life;

        s_Bullet = GetComponent<Add_Bullet>();

        meshRenderer = GetComponentInChildren<MeshRenderer>();

        lifeBar.UpdateStaminaBar(100, specialGauge);
    }

    public void OnEnable()
    {
        m_RMoveInputValue_X = 0f;
        m_RMoveInputValue_Y = 0f;

        m_LMoveInputValue_X = 0;
        m_LMoveInputValue_Y = 0;
    }

    void Start()
    {
        life = 20;
    }

    //Deplacement en diagonale 
    void MovePlayer()
    {
        Vector3 direction;

        if (m_LMoveInputValue_X > 0.1 || m_LMoveInputValue_X < -0.1)
        {
            direction = Camera.main.transform.right;
            transform.position += ((direction * m_LMoveInputValue_X) * Time.deltaTime * (speed));
        }

        if (m_LMoveInputValue_Y > 0.1 || m_LMoveInputValue_Y < -0.1)
        {
            direction = Camera.main.transform.forward;

            direction.y = 0;
            direction.Normalize();

            transform.position += (direction * lastRotationY * Time.deltaTime * (speed));

            lastRotationY = m_LMoveInputValue_Y;
        }
    }

    void SpecialShoot(int Numberbullets)
    {
        if (specialGauge >= 100)
        {
            s_Bullet.Special_Attack(Numberbullets, transform);
            specialGauge = 0;
            lifeBar.UpdateStaminaBar(100, 0);
        }
    }

    void Rotate()
    {
        transform.eulerAngles = new Vector3(0, lastBulletAngle, 0);
    }

    void Update()
    {
        timer += Time.unscaledDeltaTime;
       
        if (timer / dashDuration >= 1f)
            if (isBlinking != true)
                isInvincible = false;

        if (!playerIndexSet || !prevState.IsConnected)
        {
            GamePadState testState = GamePad.GetState(playerID);
            if (testState.IsConnected)
            {
                Debug.Log(string.Format("GamePad found {0}", playerID));
                playerIndex = playerID;
                playerIndexSet = true;
            }
        }

        prevState = state;
        state = GamePad.GetState(playerIndex);

        //if (playerIndex == playerID)
        //{
            m_LMoveInputValue_X = state.ThumbSticks.Left.X;
            m_LMoveInputValue_Y = state.ThumbSticks.Left.Y;
            m_RMoveInputValue_X = state.ThumbSticks.Right.X;
            m_RMoveInputValue_Y = state.ThumbSticks.Right.Y;

            RAngle = (Mathf.Atan2(-m_RMoveInputValue_X, -m_RMoveInputValue_Y) * Mathf.Rad2Deg);

            if (RAngle != -180)
                lastBulletAngle = RAngle;

            if (state.Triggers.Right > 0.8f)
            {
                if (fireCoroutine == null)
                    fireCoroutine = StartCoroutine(PlayerFire(transform, lastBulletAngle));
            }
            else
            {
                if (fireCoroutine != null)
                {
                    StopCoroutine(fireCoroutine);
                    fireCoroutine = null;
                }
            }

            if (state.Buttons.A == ButtonState.Pressed)
                SpecialShoot(bulletQtySpecialAttack);

            if (prevState.Buttons.LeftShoulder == ButtonState.Released && state.Buttons.LeftShoulder == ButtonState.Pressed)
            {
                // equivalent du keydown
                StartCoroutine(Dash());
                isInvincible = true;
            }

            switch (playerID)
            {
                case PlayerIndex.One:
                    GameManager.Instance.LifePlayer1 = life;
                    break;

                case PlayerIndex.Two:
                    //GameManager.Instance.LifePlayer2 = Life;
                    break;
            }

            MovePlayer();
            Rotate();
        //}
    }

    public void HitByBullet()
    {
        life -= 1;
        lifeBar.UpdateLifeBar(maxLife, life);

        specialGauge += 5;
        StartCoroutine(PlayerBlink());
        isBlinking = true;
    }

    public bool Get_Invicible()
    {
        return isInvincible;
    }

    public void Set_Invicible(bool _State)
    {
        isInvincible = _State;
    }

    public void Add_Stamina(int Stamina_Added)
    {
        specialGauge += Stamina_Added;
        lifeBar.UpdateStaminaBar(100, specialGauge);
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
        float startSpeed = speed;
        while ((timerDash / dashDuration) <= 1f)
        {
            timerDash += Time.unscaledDeltaTime;
            speed = startSpeed * dashBehaviour.Evaluate(timerDash / dashDuration);
            yield return new WaitForEndOfFrame();
        }

        speed = startSpeed;
    }

    private IEnumerator PlayerBlink()
    {
        float timerBlink = 0f;
        bool isActive = true;
        isInvincible = true;
        isBlinking = true;
        while (timerBlink <= 0.4f)
        {
            timerBlink += Time.unscaledDeltaTime;
            isActive = !isActive;
            meshRenderer.enabled = isActive;
            yield return new WaitForSeconds(0.05f);
            meshRenderer.enabled = true;

        }
        isBlinking = false;
        meshRenderer.enabled = true;
        isInvincible = false;
    }

    private IEnumerator PlayerFire(Transform transform_player, float Rotation)
    {
        while (true)
        {
            GameObject instantiatedBullet;

            for (int j = 0; j < 5; j++)
            {
                instantiatedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(-90, lastBulletAngle, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, -10);

                instantiatedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(-90, lastBulletAngle, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, -2);
                instantiatedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(-90, lastBulletAngle, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, 0);
                instantiatedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(-90, lastBulletAngle, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, 2);

                instantiatedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(-90, lastBulletAngle, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, 10);

                yield return new WaitForSeconds(0.05f);
            }
            yield return new WaitForSeconds(0.08f);
        }
    }
}