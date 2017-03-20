using UnityEngine;
using System.Collections;

public class GameOver : MonoBehaviour {

    public GameObject go;
	void StopTime()
    {
        Time.timeScale = 0;
    }

    void ActiveButton()
    {
        go.SetActive(true);
    }
}
