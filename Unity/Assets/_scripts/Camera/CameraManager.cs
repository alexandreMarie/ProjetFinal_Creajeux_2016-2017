using UnityEngine;

public class CameraManager : MonoBehaviour
{
    private static CameraManager instance = null;
    private bool change = false;
    private GameObject[] posViewTarget;

    private bool deadPlayer1 = false;
    private bool deadPlayer2 = false;
    private bool deadBoss = false;
    private int deadFirst;

    private bool specialIsFinish = false;

    public enum TypePhase { Cinematique, Combat, Special, AllDead };

    private TypePhase phase = TypePhase.Cinematique;
    
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

    public int DeadFirst
    {
        get
        {
            return deadFirst;
        }

        set
        {
            deadFirst = value;
        }
    }

    public TypePhase Phase
    {
        get
        {
            return phase;
        }

        set
        {
            phase = value;
        }
    }

    public bool SpecialIsFinish
    {
        get
        {
            return specialIsFinish;
        }

        set
        {
            specialIsFinish = value;
        }
    }
}