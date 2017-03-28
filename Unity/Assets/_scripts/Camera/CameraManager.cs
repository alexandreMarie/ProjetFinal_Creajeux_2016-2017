using UnityEngine;
using System.Collections;

public class CameraManager : MonoBehaviour
{

    private static CameraManager instance = null;
    private bool change = false;
    private GameObject[] posViewTarget;

    private bool deadPlayer1 = false;
    private bool deadPlayer2 = false;
    private bool deadBoss = false;

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
        try
        {
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
        { return change; }

        set
        { change = value; }
    }

    public GameObject[] PosViewTarget
    {
        get
        { return posViewTarget; }

        set
        { posViewTarget = value; }
    }

    public bool DeadPlayer1
    {
        get
        { return deadPlayer1; }

        set
        { deadPlayer1 = value; }
    }

    public bool DeadPlayer2
    {
        get
        { return deadPlayer2; }

        set
        { deadPlayer2 = value; }
    }

    public bool DeadBoss
    {
        get
        { return deadBoss; }

        set
        { deadBoss = value; }
    }
}