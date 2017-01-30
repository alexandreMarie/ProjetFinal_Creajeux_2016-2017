using UnityEngine;
using System.Collections;

public class Add_Bullet : MonoBehaviour {

    public GameObject Bullet;
    Transform Player_Transform;

	// Use this for initialization
    void Start()
    {

    }


    public void Shoot(float Rotation)
    {
        //Transform  Temps_Transform = m_Tr;
        Debug.Log("Test");
        //Transform Temp_Transforme = Player_Transform;
        Quaternion Quater_Bullet = transform.rotation;
        Quater_Bullet.y = -0;
        Instantiate(Bullet, transform.position, Quaternion.Euler(-90, Rotation, 0));
    }

    public void Special_Attack(int NumberBullets)
    {
        int Degrees = 360 / NumberBullets;
        for(int i = 0;i < NumberBullets ; i++)
        {
            Instantiate(Bullet, transform.position, Quaternion.Euler(-90, Degrees * i, 0));
        }
    }
}
