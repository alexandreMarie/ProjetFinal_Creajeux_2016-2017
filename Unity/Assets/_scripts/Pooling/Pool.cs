using UnityEngine;
using System.Collections.Generic;
using System;

public class Pool : MonoBehaviour
{
    [SerializeField]
    GameObject model;

    List<GameObject> items = new List<GameObject>();

    public void Init(GameObject _model, uint cnt = 1)
    {
        model = _model;
        for (int i = 0; i < cnt; i++)
        {
            InstantiateObject();
        }
    }

    public GameObject Get()
    {
        if (0 == items.Count)
        {
            InstantiateObject();
        }

        GameObject go = items[0];
        go.SetActive(true);
        items.RemoveAt(0);

        return go;
    }

    public void Set(GameObject go)
    {
        go.SetActive(false);
        items.Add(go);
    } 

    private void InstantiateObject()
    {
        GameObject go = Instantiate<GameObject>(model);
        go.SetActive(false);
        go.AddComponent<Poolable>().pool = this;
        go.transform.parent = transform;
        items.Add(go);
    }
}
