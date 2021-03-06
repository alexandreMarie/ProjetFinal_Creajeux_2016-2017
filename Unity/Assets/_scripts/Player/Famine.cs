﻿using UnityEngine;
using System.Collections;

public class Famine : Horsemen {

    int nbrBullets = 0;

    [SerializeField]
    GameObject prefabBullet = null;

    [SerializeField]
    GameObject prefabFamineSpecialBullet = null;

    [SerializeField]
    private AnimationCurve famineDashBehaviour = null;

    Ray ray;

    public override void SpecialShoot()
    {
        if (Stamina == 100)
        {
            Stamina = 0;
            Vector3 PosBalle = new Vector3(transform.position.x, transform.position.y, transform.position.z);
            int Degrees = 360 / nbrBullets;
            for (int i = 0; i < nbrBullets; i++)
            {
                Instantiate(prefabBullet, PosBalle, Quaternion.Euler(-90, Degrees * i, 0));
            }
        }
    }

    protected override IEnumerator PlayerFire()
    {
        base.PlayerFire();
        while (true)
        {
            GameObject instantiatedBullet;

            for (int j = 0; j < 5; j++)
            {
                if ((fireMask & (byte)StageFire.Five) > 0)
                {
                    Instantiate<GameObject>(prefabFamineSpecialBullet);
                    UpdateLevelShoot(false);
                    GameManager.Instance.SpecialStage5[0] = true;
                }
                if ((fireMask & (byte)StageFire.Four) > 0)
                {
                    // LAZER
                    line.enabled = true;

                    //line.material.mainTextureOffset = new Vector2(0, Time.time);

                    ray.origin = transform.position + playerTip;
                    ray.direction = transform.forward;

                    RaycastHit hit;

                    line.SetPosition(0, ray.origin);

                    Quaternion quat = Quaternion.LookRotation(transform.forward);

                    if (Physics.BoxCast(ray.origin, new Vector3(0.5f, 0.5f, 0.5f), transform.forward, out hit, quat, 100f, fireLayer))
                    {
                        //Time.timeScale = 0;
                        ExtDebug.DrawBoxCastOnHit(ray.origin, new Vector3(0.5f, 0.5f, 0.5f), quat, transform.forward, hit.distance, Color.red);
                        line.SetPosition(1, hit.point);
                        if (hit.rigidbody)
                        {
                            // we've hit something that have a rigidbody
                            hit.rigidbody.AddForceAtPosition(transform.forward * 5, hit.point);
                        }
                    }
                    else
                    {
                        line.SetPosition(1, ray.GetPoint(100));
                    }

                    //if (Physics.Raycast(ray, out hit, Mathf.SmoothStep(0, 100, 0.1f), fireLayer))
                    //{
                    //    line.SetPosition(1, hit.point);
                    //    if (hit.rigidbody)
                    //    {
                    //        // we've hit something that have a rigidbody
                    //        hit.rigidbody.AddForceAtPosition(transform.forward * 5, hit.point);
                    //    }
                    //}
                    //else
                    //{
                    //    line.SetPosition(1, ray.GetPoint(100));
                    //}

                    yield return null;

                }
                if ((fireMask & (byte)StageFire.Three) > 0)
                {
                    instantiatedBullet = pool.Get();
                    instantiatedBullet.transform.position = transform.position;
                    instantiatedBullet.transform.rotation = Quaternion.Euler(0, aimAngle - 10, 0);
                    //instantiatedBullet.transform.Rotate(0, 0, -10);

                    instantiatedBullet = pool.Get();
                    instantiatedBullet.transform.position = transform.position;
                    instantiatedBullet.transform.rotation = Quaternion.Euler(0, aimAngle + 10, 0);
                    //instantiatedBullet.transform.Rotate(0, 0, 10);
                }
                if ((fireMask & (byte)StageFire.Two) > 0)
                {
                    instantiatedBullet = pool.Get();
                    instantiatedBullet.transform.position = transform.position;
                    instantiatedBullet.transform.rotation = Quaternion.Euler(0, aimAngle - 2, 0);
                    //instantiatedBullet.transform.Rotate(0, 0, -2);

                    instantiatedBullet = pool.Get();
                    instantiatedBullet.transform.position = transform.position;
                    instantiatedBullet.transform.rotation = Quaternion.Euler(0, aimAngle + 2, 0);
                    //instantiatedBullet.transform.Rotate(0, 0, 2);
                }
                if ((fireMask & (byte)StageFire.One) > 0)
                {
                    instantiatedBullet = pool.Get();
                    instantiatedBullet.transform.position = transform.position;
                    instantiatedBullet.transform.rotation = Quaternion.Euler(0, aimAngle, 0);
                    //instantiatedBullet.transform.Rotate(0, 0, 0);
                    GameManager.Instance.NbShoot[PlayerID]++;
                    yield return new WaitForSeconds(0.05f);
                }

            }
            if ((fireMask & (byte)StageFire.One) > 0 || (fireMask & (byte)StageFire.Five) > 0)
            {
                // Otherwise the laser beam blink
                yield return new WaitForSeconds(0.08f);
            }
        }
    }
    // Use this for initialization
    void Start()
    {
        LifeMax = GameManager.Instance.Sauvegarde_state[0].PDV;
        Life = LifeMax;
        Stamina = 0;
        Speed = GameManager.Instance.Sauvegarde_state[0].speed;
        Damage = GameManager.Instance.Sauvegarde_state[0].attack;
        DashDuration = 0.1f;
        DashBehaviour = famineDashBehaviour;
        Bullet = prefabBullet;
        line = GetComponent<LineRenderer>();
        line.enabled = false;
    }

    // Update is called once per frame
    new void Update()
    {
        base.Update();
    }

}
