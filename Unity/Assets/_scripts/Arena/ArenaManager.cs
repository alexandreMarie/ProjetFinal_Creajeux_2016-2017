using UnityEngine;
using System.Collections;

public class ArenaManager : MonoBehaviour
{

    BoxCollider[] cols;

    Vector3 startPos;

    // Use this for initialization
    void Start()
    {
        cols = GetComponentsInChildren<BoxCollider>();
        startPos = GameObject.Find("pos1").transform.position;
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Player")
        {
            col.GetComponent<Horsemen>().enabled = false;
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.tag == "Player")
        {
            col.transform.position = startPos;
            col.GetComponent<Horsemen>().enabled = true;
        }
    }

}
