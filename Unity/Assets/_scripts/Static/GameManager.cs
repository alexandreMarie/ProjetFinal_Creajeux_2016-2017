using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {

    private static GameManager instance = null;
    
    private bool dead;
    [SerializeField]
    private GameObject gameOver;

    [SerializeField]
    private int lifePlayer1 = 20;
    [SerializeField]
    private int lifePlayer2 = 20;
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
        
            if (dead)
            {
                gameOver.SetActive(true);
            }
            else
            {
                gameOver.SetActive(false);
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

    public int LifePlayer2
    {
        get
        {
            return lifePlayer2;
        }

        set
        {
            lifePlayer2 = value;
        }
    }

    public GameObject GameOver
    {
        get
        {
            return gameOver;
        }

        set
        {
            gameOver = value;
        }
    }
}
