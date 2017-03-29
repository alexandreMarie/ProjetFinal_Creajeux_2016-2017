using UnityEngine;
using System.Collections;

public class All_player_selected : MonoBehaviour {

    bool Loading_Ok;
    Character_Selection[] Players;
	// Use this for initialization
	void Start () {
        Loading_Ok = false;
        Players = GetComponentsInChildren<Character_Selection>();
	}
	
	// Update is called once per frame
	void Update () {

        if(Players[1].Return_Boolen() == true && Players[0].Return_Boolen() == true)
        {
            Loading_Ok = true;
        }
	if(Loading_Ok == true)
        {
            Debug.Log("Ca marche! putain pour une fois t'es compétant fete ca enculé !");
            //On apelle la fonction du gamemanager.
        }
	}
}
