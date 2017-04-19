using UnityEngine;

public class EyeBullet : MonoBehaviour
{
    private static int count = 0;
    private int number = 0;
    private float t = 0.0f;

    private Vector3 target = default(Vector3);

    private static GameManager gm;

    public static Vector3 Curve(Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3, float t)
    {
        t = Mathf.Clamp01(t);
        float oneMinusT = 1f - t;
        return
            oneMinusT * oneMinusT * oneMinusT * p0 +
            3f * oneMinusT * oneMinusT * t * p1 +
            3f * oneMinusT * t * t * p2 +
            t * t * t * p3;
    }

    void Start()
    {
        Destroy(gameObject, 2.0f);
        count++;
        number = count;

        if (count % 2 == 0)

        {
            transform.position = new Vector3(1.5f - Random.Range(-0.5f, 0.5f), 2.0f - Random.Range(-0.5f, 0.5f), -10.0f - Random.Range(-0.5f, 0.5f));
            target = new Vector3(Random.Range(0.0f, 1.0f), 0, Random.Range(-1.0f, 1.0f));
        }
        else
        {
            transform.position = new Vector3(-1.5f - Random.Range(-0.5f, 0.5f), 2.0f - Random.Range(-0.5f, 0.5f), -10.0f - Random.Range(-0.5f, 0.5f));
            target = new Vector3(Random.Range(-1.0f, 0.0f), 0, Random.Range(-1.0f, 1.0f));
        }

        if (!gm)
            gm = GameManager.Instance;
    }

    void Update()
    {
        //if (t > 2.0f)
        //    t += Time.deltaTime * 2;
        //else
            t += Time.deltaTime * 1.5f;

        if (transform.position.y > 0.1)
        {
            if (number % 2 == 0)
                transform.position = Curve(transform.position, new Vector3(3, 6.5f, -4), new Vector3(3, 6.5f, -1), target, t);
            else
                transform.position = Curve(transform.position, new Vector3(-3, 6.5f, -4), new Vector3(-3, 6.5f, -1), target, t);
        }
    }
}