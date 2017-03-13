using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {

    private static GameManager instance = null;

    public bool dead = false;
    private GameObject gameOver;

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
        gameOver = GameObject.FindGameObjectWithTag("GameOver");
    }

    void Update()
    {
       
        if(dead)
        {
            gameOver.SetActive(true);
            Time.timeScale = 0;
        }
        else
        {
            gameOver.SetActive(false);
            Time.timeScale = 1;
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

}
