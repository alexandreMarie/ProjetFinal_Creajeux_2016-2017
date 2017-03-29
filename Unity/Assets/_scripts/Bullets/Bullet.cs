using UnityEngine;

public class Bullet : MonoBehaviour
{
    #region Serialized fields
    [SerializeField]
    [Range(1.0f, 20.0f)]
    private float speed = 10.0f;

    [SerializeField]
    [Range(1.0f, 20.0f)]
    private float destroyTime = 5.0f;
    #endregion

    private float lerpFactor = 0.0f;

    private Vector3 rotation = new Vector3(0.0f, 0.0f, 0.0f);
    
    private bool rotateBullet = false;
    public bool RotateBullet
    {
        get { return rotateBullet; }

        set { rotateBullet = value; }
    }

    void Start()
    {
        Destroy(gameObject, destroyTime);
    }

    void Update()
    {
        transform.position += transform.forward * speed * Time.deltaTime;

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
            Player player = col.GetComponent<Player>();

            if (player.Get_Invicible() == false)
            {
                if (tag != "Snake")
                    player.HitByBullet();
                else
                {
                    player.StopAllCoroutines();
                    player.FreezePlayer();
                }

                Destroy(gameObject);
            }
        }
    }
}