using UnityEngine;
using System.Collections;

public class CameraManager : MonoBehaviour {

    private static CameraManager instance = null;
    private bool change = false;
    private GameObject [] posViewTarget;

    public static CameraManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = new GameObject("CameraManager").AddComponent<CameraManager>();
                DontDestroyOnLoad(instance);
            }
            return instance;
        }

    }

    void Start()
    {
        try {
            posViewTarget = GameObject.FindGameObjectsWithTag("PosViewTarget");
        }
        catch
        {
            Debug.Log("Pas de targets spécifique pour cette arene");
        }
    }

    public bool Change
    {
        get
        {
            return change;
        }

        set
        {
            change = value;
        }
    }

    public GameObject[] PosViewTarget
    {
        get
        {
            return posViewTarget;
        }

        set
        {
            posViewTarget = value;
        }
    }

}
