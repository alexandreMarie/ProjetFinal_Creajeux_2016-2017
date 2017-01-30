using UnityEngine;

public class bulletScript : MonoBehaviour
{
    #region Serialized fields
    [SerializeField]
    [Range(1.0f, 20.0f)]
    private float speed = 15.0f;

    [SerializeField]
    [Range(1.0f, 20.0f)]
    private float destroyTime = 1.0f;
    #endregion

    private static int count = 0;
    void Start()
    {
        count++;
        //Debug.Log(count);
        Destroy(gameObject, destroyTime);
    }
    void Update()
    {
        transform.position += transform.forward * speed * Time.deltaTime;
    }

    void OnCollisionEnter(Collision col)
    {
        //Debug.Log("Hit");
        if (col.collider.tag == "Player")
        {
            //ONLY WORKS WITH NON KINEMATIC OBJECTS
            col.gameObject.GetComponent<MeshRenderer>().material.color = Color.red;
            Destroy(gameObject);
        }

        if (col.collider.tag == "Wall")
            Destroy(gameObject, 0.1f);
    }
    public void OnDestroy()
    {
        count--;
    }
}