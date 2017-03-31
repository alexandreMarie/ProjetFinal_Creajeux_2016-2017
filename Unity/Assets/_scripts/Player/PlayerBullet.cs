using UnityEngine;
using System.Collections;

public class PlayerBullet : MonoBehaviour
{
    #region Serialized fields 
    [SerializeField]
    [Range(1.0f, 500.0f)]
    private float speed = 10.0f;

    [SerializeField]
    [Range(5.0f, 20.0f)]
    private float destroyTime = 10.0f;
    #endregion

    private void OnEnable()
    {
        StartCoroutine(DisableObject());
    }

    void Update()
    {
        transform.position += transform.forward * Time.deltaTime * speed;
    }

    IEnumerator DisableObject()
    {
        yield return new WaitForSeconds(destroyTime);
        gameObject.SetActive(false);
    }
}