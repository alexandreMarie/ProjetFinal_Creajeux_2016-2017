using UnityEngine;
using System.Collections;

public class Poolable : MonoBehaviour{

    public Pool pool;

    private void OnDisable()
    {
        if (pool)
        pool.Set(gameObject);
    }
}