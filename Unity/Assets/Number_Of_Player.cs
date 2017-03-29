using UnityEngine;
using System.Collections;

public class Number_Of_Player : MonoBehaviour {

    XInputManager Controller_Player;
    [SerializeField]
    GameObject[] Players;
    Transform Character_Selector;
	// Use this for initialization
	void Start () {
        Controller_Player = XInputManager.Instance;

        Debug.Log(Controller_Player.NumControllers);
        for(int i = 0; i < Controller_Player.NumControllers; i++)
        {
                Instantiate(Players[i]);
                Players[i].transform.SetParent(Character_Selector);
                switch (i)
                {
                    case (0):
                        Players[i].transform.position = new Vector3(-1.07f, 0.0f,-7.25f);
                        break;
                    case (1):
                        Players[i].transform.position = new Vector3(1.35f, 0.0f,-7.25f);
                        break;
                }
               
        }
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
