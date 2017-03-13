using UnityEngine;
using System.Collections;

public class Add_Bullet : MonoBehaviour {

    public GameObject Bullet;
    Transform Player_Transform;

    float spreadAngle = 10.0f;

    // Use this for initialization
    void Start()
    {

    }


    public void Shoot(float Rotation,Transform transform_player)
    {
<<<<<<< HEAD
        //Transform  Temps_Transform = m_Tr;
        //Debug.Log("Test");
        //Transform Temp_Transforme = Player_Transform;
        float spreadZ = Random.Range(-spreadAngle, spreadAngle);

        Vector3 PosBalle = new Vector3(transform_player.position.x, transform_player.position.y + 20, transform_player.position.z);
=======
        Vector3 PosBalle = new Vector3(transform.position.x, transform.position.y + 20, transform.position.z);
>>>>>>> 7f7549e7473300d64d931f58951f9aee2962059e
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

    public void Special_Attack(int NumberBullets, Transform transform_player)
    {
        Vector3 PosBalle = new Vector3(transform_player.position.x, transform_player.position.y + 20, transform_player.position.z);
        int Degrees = 360 / NumberBullets;
        for(int i = 0;i < NumberBullets ; i++)
        {
            Instantiate(Bullet,PosBalle, Quaternion.Euler(-90, Degrees * i, 0));
        }
    }
}
