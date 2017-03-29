using UnityEngine;
using System.Collections;

public class Famine : Horsemen {
    [SerializeField]
    int nbrBullets;

    [SerializeField]
    GameObject prefabBullet;

    [SerializeField]
    private AnimationCurve warDashBehaviour = null;

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
        while (true)
        {
            GameObject instantiatedBullet;

            for (int j = 0; j < 5; j++)
            {
                instantiatedBullet = Instantiate(prefabBullet, transform.position, Quaternion.Euler(-90, aimAngle, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, -10);

                instantiatedBullet = Instantiate(prefabBullet, transform.position, Quaternion.Euler(-90, aimAngle, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, -2);
                instantiatedBullet = Instantiate(prefabBullet, transform.position, Quaternion.Euler(-90, aimAngle, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, 0);
                instantiatedBullet = Instantiate(prefabBullet, transform.position, Quaternion.Euler(-90, aimAngle, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, 2);

                instantiatedBullet = Instantiate(prefabBullet, transform.position, Quaternion.Euler(-90, aimAngle, 0)) as GameObject;
                instantiatedBullet.transform.Rotate(0, 0, 10);

                yield return new WaitForSeconds(0.05f);
            }
            yield return new WaitForSeconds(0.08f);
        }
    }

    // Use this for initialization
    void Start()
    {
        Stamina = 100;
        Speed = 20f;
        DashDuration = 0.2f;
        DashBehaviour = warDashBehaviour;
    }

    // Update is called once per frame
    new void Update()
    {
        base.Update();
    }

}
