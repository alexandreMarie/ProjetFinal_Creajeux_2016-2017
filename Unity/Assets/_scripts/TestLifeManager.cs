using UnityEngine;

public class TestLifeManager : MonoBehaviour
{
    [SerializeField]
    private LifeManager lifeManager = null;

    [SerializeField]
    private LifeManager bossLifeManager = null;

    private int life = 10;
    private int bossLife = 10;

    void Update()
    {
        if (Input.GetButtonDown("Jump"))
            lifeManager.UpdateLifeBar(10, --life);

        if (Input.GetKeyDown(KeyCode.DownArrow))
            bossLifeManager.UpdateLifeBar(10, --bossLife);
    }
}