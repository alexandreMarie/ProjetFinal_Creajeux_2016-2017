using UnityEngine;
using System.Collections;

public class Add_Bullet : MonoBehaviour
{
    public GameObject Bullet;

    public void Special_Attack(int NumberBullets, Transform transform_player)
    {
        Vector3 PosBalle = new Vector3(transform_player.position.x, transform_player.position.y, transform_player.position.z);
        int Degrees = 360 / NumberBullets;
        for (int i = 0; i < NumberBullets; i++)
        {
            Instantiate(Bullet, PosBalle, Quaternion.Euler(-90, Degrees * i, 0));
        }
    }
}