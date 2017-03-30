using UnityEngine;
using System.Collections;

public class All_player_selected : MonoBehaviour {

    bool Loading_Ok;
    [SerializeField]
    Character_Selection[] Players;
    GameManager GM;
    XInputManager XIM;

    // Use this for initialization
    void Start () {
        GM = GameManager.Instance;
        XIM = XInputManager.Instance;
        Loading_Ok = false;
        Players = GetComponentsInChildren<Character_Selection>();
	}
	
	// Update is called once per frame
	void Update () {
        for (int i = 0; i < Players.Length; i++)
        {
            if (Players[i].Return_Boolen() == true)
            {
                Loading_Ok = true;
            }
            else
            {
                Loading_Ok = false;
                i = Players.Length;
            }
        }
	if(Loading_Ok == true)
        {
            Debug.Log("Ca marche! putain pour une fois t'es compétant fete ca enculé !");
           for(int i = 0; i < XIM.NumControllers;i++)
            {
                GM.Set_Stat_Player(Players[i].Return_Stats(i), i, XIM.NumControllers);
            }
        }
	}
}
