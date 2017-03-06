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
    void Start()
    {
        count++;
        Destroy(gameObject, destroyTime);
    }
    void Update()
    {
        float i = Random.value;
        transform.position += transform.forward * speed * Time.deltaTime;
        transform.position.Set(0, Mathf.Cos(i), 0);
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Wall")
            Destroy(gameObject, 0.1f);

        if (col.tag == "Player")
        {
            col.GetComponent<Player>().HitByBullet();
            Destroy(gameObject);
        }
    }
    public void OnDestroy()
    {
        count--;
    }
}