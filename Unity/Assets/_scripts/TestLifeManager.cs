using UnityEngine;
using System.Collections;

public class TestLifeManager : MonoBehaviour {

    [SerializeField]
    private LifeManager lifeManager;

    [SerializeField]
    private LifeManager bossLifeManager;

    private int life = 10;
    private int bossLife = 10;

    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetButtonDown("Jump"))
        {
            lifeManager.UpdateLifeBar(10, --life);
        }

        if (Input.GetKeyDown(KeyCode.DownArrow))
        {
            bossLifeManager.UpdateLifeBar(10, --bossLife);
        }
	}
}
