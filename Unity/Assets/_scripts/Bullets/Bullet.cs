using System.Collections;
using UnityEngine;

public class Bullet : Poolable
{
    #region Serialized fields
    [SerializeField]
    [Range(1.0f, 20.0f)]
    private float speed = 10.0f;

    [SerializeField]
    [Range(1.0f, 10.0f)]
    private float destroyTime = 1.0f;
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
        StartCoroutine(DisableAfter());
    }

    void OnEnable()
    {
        StartCoroutine(DisableAfter());
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
    private IEnumerator DisableAfter()
    {
        yield return new WaitForSeconds(destroyTime);

        gameObject.SetActive(false);

        yield return null;
    }
}