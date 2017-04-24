using UnityEngine;
using System.Collections;
using XInputDotNetPure;
public class Selection_of_character : MonoBehaviour {

    XInputManager XIM;
    GameObject[,] charac_tab;	// Use this for initialization
    [SerializeField]
    Number_Of_Player N_O_B;
    
    int Number_of_payers;
    int Last_Number_of_Player;

	void Start () {
        XIM = XInputManager.Instance;
   
    
	}
	
	// Update is called once per frame
	void Update () {
        Get_Conneccted_Player();
        Select_character();
    }


    void Get_Conneccted_Player()
    {
        Number_of_payers = XIM.NumControllers;

        if (Number_of_payers != Last_Number_of_Player)
        {
            charac_tab = new GameObject[Number_of_payers, 4];
            for (int i = 0; i < 4; i++)
            {
                charac_tab[Number_of_payers-1, i] = N_O_B.Character_liste[Number_of_payers-1, i];
            }
        }

        Last_Number_of_Player = Number_of_payers;
    }

    void Select_character()
    {
        for(int i = 0; i < 2; i++)
        {

           if(XIM.CurrState[i].Buttons.A == ButtonState.Pressed)
            {
     
            }
        }
    }

}
