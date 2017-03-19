using UnityEngine;
using System.Collections;

public class Add_Bullet : MonoBehaviour
{

    public GameObject Bullet;

    private Coroutine shootHandler = null;

    // Use this for initialization
    void Start()
    {

    }


    public void Shoot(float Rotation, Transform transform_player)
    {
        if (shootHandler == null)
            StartCoroutine(PlayerFire(transform_player, Rotation));
    }

    public void Special_Attack(int NumberBullets, Transform transform_player)
    {
        Vector3 PosBalle = new Vector3(transform_player.position.x, transform_player.position.y, transform_player.position.z);
        int Degrees = 360 / NumberBullets;
        for (int i = 0; i < NumberBullets; i++)
        {
            Instantiate(Bullet, PosBalle, Quaternion.Euler(-90, Degrees * i, 0));
        }
    }

    private IEnumerator PlayerFire(Transform transform_player, float Rotation)
    {

        Vector3 PosBalle = new Vector3(transform_player.position.x, transform_player.position.y, transform_player.position.z);

        //  Vector3 PosBalle = new Vector3(transform.position.x, transform.position.y + 20, transform.position.z);

        Quaternion Quater_Bullet = transform.rotation;
        Quater_Bullet.y = 0;
        GameObject bullet;

        for (int i = -10; i < 10; i += 5)
        {
            bullet = Instantiate(Bullet, PosBalle, Quaternion.Euler(-90, Rotation, 0)) as GameObject;
            bullet.transform.Rotate(0, 0, i);
        }
        yield return new WaitForSeconds(1.0f);
    }
}
