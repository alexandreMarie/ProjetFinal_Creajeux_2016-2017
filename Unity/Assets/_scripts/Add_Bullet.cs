﻿using UnityEngine;
using System.Collections;

public class Add_Bullet : MonoBehaviour {

    public GameObject Bullet;
    Transform Player_Transform;

    float spreadAngle = 10.0f;

    // Use this for initialization
    void Start()
    {

    }


    public void Shoot(float Rotation)
    {
        Vector3 PosBalle = new Vector3(transform.position.x, transform.position.y + 20, transform.position.z);
        Quaternion Quater_Bullet = transform.rotation;
        Quater_Bullet.y = 0;
        //GameObject bullet = Instantiate(Bullet, PosBalle, Quaternion.Euler(-90, Rotation, 0)) as GameObject;
        //bullet.transform.Rotate(0, 0, 0);
        GameObject bullet;

        for (int i = -10; i < 10; i += 10)
        {
            bullet = Instantiate(Bullet, PosBalle, Quaternion.Euler(-90, Rotation, 0)) as GameObject;
            bullet.transform.Rotate(0, 0, i);
        }
    }

    public void Special_Attack(int NumberBullets)
    {
        Vector3 PosBalle = new Vector3(transform.position.x, transform.position.y + 20, transform.position.z);
        int Degrees = 360 / NumberBullets;
        for(int i = 0;i < NumberBullets ; i++)
        {
            Instantiate(Bullet,PosBalle, Quaternion.Euler(-90, Degrees * i, 0));
        }
    }
}
