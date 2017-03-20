using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {

    private static GameManager instance = null;

    public bool dead = false;
    private GameObject gameOver;

    [SerializeField]
    private int lifePlayer1 = 10;
    [SerializeField]
    private int lifePlayer2 = 10;
    private int lifeBoss;

    public static GameManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = new GameObject("GameManager").AddComponent<GameManager>();
                DontDestroyOnLoad(instance);
            }
            return instance;
        }
    }
    void Start()
    {
        try {
            gameOver = GameObject.FindGameObjectWithTag("GameOver");
        }
        catch
        {
            return;
        }
    }

    void Update()
    {
        if (lifePlayer1 == 0)
        {
            CameraManager.Instance.DeadPlayer1 = true;
        }
        else if (lifePlayer2 == 0)
        {
            CameraManager.Instance.DeadPlayer2 = true;
        }
        try
        {
            if (dead)
            {
                gameOver.SetActive(true);
            }
            else
            {
                gameOver.SetActive(false);
            }
        }
        catch
        {
            return;
        }
    }
    public bool Dead
    {
        get
        {
            return dead;
        }

        set
        {
            dead = value;
        }
    }

    public int LifePlayer1
    {
        get
        {
            return lifePlayer1;
        }

        set
        {
            lifePlayer1 = value;
        }
    }
}
