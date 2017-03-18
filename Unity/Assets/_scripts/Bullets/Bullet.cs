﻿using UnityEngine;

public class Bullet : MonoBehaviour
{
    #region Serialized fields
    [SerializeField]
    [Range(1.0f, 500.0f)]
    private float speed = 15.0f;

    [SerializeField]
    [Range(1.0f, 20.0f)]
    private float destroyTime = 1.0f;
    #endregion

    private static int count = 0;

    private bool rotateBullet = false;
    private float lerpFactor = 0.0f;

    private Vector3 rotation = new Vector3(0.0f, 0.0f, 0.0f);
    private Vector3 originalForward = new Vector3(0.0f, 0.0f, 0.0f);

    public bool RotateBullet
    {
        get
        {
            return rotateBullet;
        }

        set
        {
            rotateBullet = value;
        }
    }

    void Start()
    {
        count++;
        originalForward = transform.forward;
        Destroy(gameObject, destroyTime);
    }

    void Update()
    {
        float i = Random.value;
        transform.position += transform.forward * speed * Time.deltaTime;
        transform.position.Set(0, Mathf.Cos(i), 0);

        if (rotateBullet)
        {
            lerpFactor += Time.deltaTime / 500;

            rotation = new Vector3(0, Mathf.Lerp(0, 180, lerpFactor), 0);

            transform.Rotate(rotation);
        }
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Wall")
            Destroy(gameObject, 0.1f);

        if (col.tag == "Player")
        {
            if (col.GetComponent<Player>().Get_Invicible() == false)
            {
                if (tag != "Snake")
                    col.GetComponent<Player>().HitByBullet();
                else
                    col.GetComponent<Player>().FreezePlayer();

                Destroy(gameObject);
            }
        }
    }

    public void OnDestroy()
    {
        count--;
    }
}