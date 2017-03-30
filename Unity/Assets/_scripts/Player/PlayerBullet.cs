﻿using UnityEngine;

public class PlayerBullet : MonoBehaviour
{
    #region Serialized fields
    [SerializeField]
    [Range(1.0f, 500.0f)]
    private float speed = 10.0f;

    [SerializeField]
    [Range(5.0f, 20.0f)]
    private float destroyTime = 10.0f;
    #endregion

    void Start()
    {
        Destroy(gameObject, destroyTime);
    }
    void Update()
    {
        transform.position -= transform.up * Time.deltaTime * speed;
    }
}