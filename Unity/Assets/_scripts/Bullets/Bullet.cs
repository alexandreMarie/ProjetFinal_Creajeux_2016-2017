using UnityEngine;

public class Bullet : MonoBehaviour
{
    #region Serialized fields
    [SerializeField]
    [Range(1.0f, 20.0f)]
    private float speed = 10.0f;

    [SerializeField]
    [Range(1.0f, 10.0f)]
    private float destroyTime = 5.0f;
    #endregion

    private bool rotateBullet = false;
    private float lerpFactor = 0.0f;

    private Vector3 rotation = new Vector3(0.0f, 0.0f, 0.0f);

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
        Debug.Log(col.tag);
        if (col.tag == "Bullet")
            Destroy(col.gameObject);
    }
}