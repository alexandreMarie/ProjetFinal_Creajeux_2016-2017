﻿using System.Collections;
using UnityEngine;
using System;
public abstract class Horsemen : MonoBehaviour
{

    public enum StageFire
    {
        One = 1,
        Two = 2,
        Three = 4,
        Four = 8,
        Five = 16
    }

    StageFire shootStage = StageFire.One;

    #region Variables
    
    public int playerID;

    XInputManager XIMinstance;
    private bool isInvincible;
    private int life = lifeMax;
    public int Life
    {
        get
        {
            return life;
        }
        set
        {
            life = value;
            if (life > lifeMax)
            {
                life = lifeMax;
            }
            lifeUpdater.UpdateLifebar(life);
            GameManager.Instance.UpdateLife(playerID, life);
        }
    }

    private Rigidbody rb;
    float timer = 0f;

    // Sticks values
    protected Vector2 aimValue;
    protected Vector2 moveValue;
    private Vector3 direction;
    private Vector3 rotation;

    protected float aimAngle, prevAimAngle;

    MeshRenderer meshRenderer;

    Coroutine fireCoroutine, dashCoroutine;

    protected Pool pool;

    private LifeUpdater lifeUpdater;

    protected LineRenderer line;

    [SerializeField]
    protected byte fireMask = (byte)StageFire.One;

    Transform arenaCenter = null;

    #endregion

    #region Overridable Values

    private float dashDuration = 1f;
    public virtual float DashDuration
    {
        get
        {
            return dashDuration;
        }

        protected set
        {
            dashDuration = value;
        }
    }

    private AnimationCurve dashBehaviour = null;
    public virtual AnimationCurve DashBehaviour
    {
        get
        {
            return dashBehaviour;
        }

        protected set
        {
            dashBehaviour = value;
        }
    }

    private float speed = 10.0f;
    public virtual float Speed
    {
        get
        {
            return speed;
        }

        protected set
        {
            speed = value;
        }
    }

    private int stamina = 0;
    public int Stamina
    {
        get
        {
            return stamina;
        }

        set
        {
            stamina = value;
            if (stamina > 100)
            {
                stamina = 100;
            }
            // Update de l'UI
        }
    }

    private GameObject bullet;
    public GameObject Bullet
    {
        get
        {
            return bullet;
        }

        protected set
        {
            bullet = value;
            // Init of pool
            GameObject go = new GameObject("BulletPoolPlayer" + (playerID + 1), typeof(Pool));
            pool = go.GetComponent<Pool>();
            pool.Init(bullet, nbBulletsPool);
        }
    }

    #endregion

    #region Constants

    const int lifeMax = 100;
    const float freezeDuration = 2f;
    const float blinkDuration = 0.4f;
    const float rotateSmooth = 0.05f;
    const float stickDeadZone = 0.3f;
    const float triggerDeadZone = 0.1f;
    protected const int nbBulletsPool = 30;

    [SerializeField]
    protected LayerMask fireLayer = 9;

    protected Vector3 playerTip = new Vector3(0, 1, 0);

    #endregion

    private float rotateSpeed = 0f;

    public abstract void SpecialShoot();

    /// <summary>
    /// Update the stage shoot
    /// </summary>
    /// <param name="levelUp">True is level up, False is level down</param>
    public void UpdateLevelShoot(bool levelUp)
    {
        if (levelUp)
        {
            // PowerUp !
            switch (shootStage)
            {
                case StageFire.One:
                    shootStage = StageFire.Two;
                    fireMask += (byte)StageFire.Two;
                    break;
                case StageFire.Two:
                    shootStage = StageFire.Three;
                    fireMask += (byte)StageFire.Three;
                    break;
                case StageFire.Three:
                    shootStage = StageFire.Four;
                    fireMask = (byte)StageFire.Four;
                    break;
                case StageFire.Four:
                    shootStage = StageFire.Five;
                    fireMask = (byte)StageFire.Five;
                    line.enabled = false;
                    break;
                case StageFire.Five:
                    shootStage = StageFire.One;
                    fireMask = (byte)StageFire.One;
                    break;
                default:
                    break;
            }
        }
        else
        {
            // PowerDown
            switch (shootStage)
            {
                case StageFire.Two:
                    shootStage = StageFire.One;
                    fireMask = (byte)StageFire.One;
                    break;
                case StageFire.Three:
                    shootStage = StageFire.Two;
                    fireMask -= (byte)StageFire.Three;
                    break;
                case StageFire.Four:
                    shootStage = StageFire.Three;
                    fireMask = (byte)StageFire.Three & (byte)StageFire.Two & (byte)StageFire.One;
                    line.enabled = false;
                    break;
                case StageFire.Five:
                    shootStage = StageFire.One;
                    fireMask = (byte)StageFire.One;
                    break;
                default:
                    break;
            }
        }
    }

    void Move()
    {
        if (moveValue.magnitude > stickDeadZone)
        {
            direction = ((Camera.main.transform.right * moveValue.x) + (Camera.main.transform.forward * moveValue.y)).normalized * Time.unscaledDeltaTime * speed;
            direction.y = 0; // Cancel the Y translation;
            if (Vector3.Distance(direction + transform.position, arenaCenter.position) < 5)
            {
                rb.AddForce(direction * speed, ForceMode.VelocityChange);
            }

        }
    }

    void Rotate()
    {
        if (aimValue.magnitude > stickDeadZone)
        {
            rotation.y = Mathf.SmoothDampAngle(transform.eulerAngles.y, aimAngle, ref rotateSpeed, rotateSmooth);
            transform.eulerAngles = rotation;
        }
    }

    private IEnumerator Freeze()
    {
        GetComponentInChildren<MeshRenderer>().material.color = Color.yellow;
        this.enabled = false;
        //GetComponentInChildren<Renderer>().material.color = Color.white;

        yield return new WaitForSeconds(freezeDuration);

        this.enabled = true;
        StartCoroutine(PlayerBlink());
        GetComponentInChildren<MeshRenderer>().material.color = Color.white;
    }

    protected virtual IEnumerator Dash()
    {
        float timerDash = 0f;
        float startSpeed = speed;
        while ((timerDash / dashDuration) <= 1f)
        {
            timerDash += Time.unscaledDeltaTime;
            speed = startSpeed * dashBehaviour.Evaluate(timerDash / dashDuration);
            yield return new WaitForEndOfFrame();
        }

        isInvincible = false;
        speed = startSpeed;
        dashCoroutine = null;
    }

    private IEnumerator PlayerBlink()
    {
        float timerBlink = 0f;
        bool isActive = true;
        isInvincible = true;
        while (timerBlink <= blinkDuration)
        {
            timerBlink += Time.unscaledDeltaTime;
            isActive = !isActive;
            meshRenderer.enabled = isActive;
            yield return new WaitForSeconds(0.05f);
            meshRenderer.enabled = true;

        }
        meshRenderer.enabled = true;
        isInvincible = false;
    }

    protected virtual IEnumerator PlayerFire()
    {
        return null;
    }

    public void Awake()
    {
        rb = GetComponentInChildren<Rigidbody>();
        meshRenderer = GetComponentInChildren<MeshRenderer>();
        XIMinstance = XInputManager.Instance;
        moveValue = Vector2.zero;
        aimValue = Vector2.zero;
        lifeUpdater = GetComponentInChildren<LifeUpdater>();
        fireLayer.value = 1 << LayerMask.NameToLayer("Boss");
        arenaCenter = GameObject.FindGameObjectWithTag("Center").transform;

        if (arenaCenter == null)
        {
            throw new Exception("Centre de l'arene non trouvé");
        }
        //Debug.Log(LayerMask.NameToLayer("Boss"));
    }

    protected void Update()
    {
        timer += Time.unscaledDeltaTime;

        XIMinstance.GetStick(playerID, XInputManager.XSticks.LeftStick, ref moveValue);
        XIMinstance.GetStick(playerID, XInputManager.XSticks.RightStick, ref aimValue);

        if (aimValue.magnitude > stickDeadZone)
        {
            prevAimAngle = aimAngle;
            aimAngle = (Mathf.Atan2(-aimValue.x, -aimValue.y) * Mathf.Rad2Deg);
        }

        if (XIMinstance.GetStick(playerID, XInputManager.XSticks.RightTrigger) > triggerDeadZone)
        {
            if (fireCoroutine == null)
            {
                fireCoroutine = StartCoroutine(PlayerFire());
            }
        }
        else
        {
            if (fireCoroutine != null)
            {
                StopCoroutine(fireCoroutine);
                fireCoroutine = null;
                line.enabled = false;
            }
        }

        if (XIMinstance.GetButtonDown(playerID, XInputManager.XButtons.A))
        {
            SpecialShoot();
        }

        if (XIMinstance.GetButtonDown(playerID, XInputManager.XButtons.LeftBumper))
        {
            if (dashCoroutine == null)
            {
                dashCoroutine = StartCoroutine(Dash());
                isInvincible = true;
            }
        }

        //if (XIMinstance.GetButtonDown(playerID, XInputManager.XButtons.RightBumper))
        //{
        //    XIMinstance.SetVibration(playerID, 0.5f, 1f);
        //}

        Move();
        Rotate();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!isInvincible)
        {
            if (other.tag == "Snake")
            {
                StartCoroutine(Freeze());
                XIMinstance.SetVibration(playerID, freezeDuration, 1f);
                Life -= 10;
            }
            else if (other.tag == "EnnemyBullet")
            {
                StartCoroutine(PlayerBlink());
                XIMinstance.SetVibration(playerID, blinkDuration / 2f, 0.5f);
                Life--;
            }
            else if (other.tag == "ScavengingSnake")
            {
                StartCoroutine(Freeze());
                XIMinstance.SetVibration(playerID, freezeDuration, 1f);
                Life -= 10;
            }
        }
    }
}