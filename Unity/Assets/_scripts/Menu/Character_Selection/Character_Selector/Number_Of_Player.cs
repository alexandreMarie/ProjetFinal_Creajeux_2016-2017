using UnityEngine;
using System.Collections;

public class Number_Of_Player : MonoBehaviour {

    XInputManager Controller_Player;
    [SerializeField]
    GameObject[] Players;
    [SerializeField]
    Transform Character_Selector;

    int Indice_Player = 0;
    int Last_Indice_Player = 0;
    int i = 0;
    // Use this for initialization
    void Start () {
        Controller_Player = XInputManager.Instance;
      
	}
	
	// Update is called once per frame
	void Update () {

        Indice_Player = Controller_Player.NumControllers;
        Debug.Log("Indice_Players : " + Indice_Player + "| Last_Indice_Player : " + Last_Indice_Player);
	    if(Indice_Player != Last_Indice_Player)
        {
            New_player();
        }
	}

    void New_player()
    {
        Debug.Log(Controller_Player.NumControllers);
        for (i = i; i < Indice_Player; i++)
        {
            Debug.Log("On est dedans ! :o");
            Instantiate(Players[i], Character_Selector);
            Players[i].SetActive(true);
            //Players[i].transform.SetParent(Character_Selector);
            switch (i)
            {
                case (0):
                    Players[i].transform.position = new Vector3(-1.0f, 0.0f, -7.5f);
                    break;
                case (1):
                    Players[i].transform.position = new Vector3(1.2f, 0.0f, -7.5f);
                    break;
            }
        }
        Last_Indice_Player = Indice_Player;
    }
}
