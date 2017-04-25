﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using XInputDotNetPure;
public class UI_Character : MonoBehaviour {
    XInputManager XIM;
    [SerializeField]
    Sprite[] UI_fanion;
    [SerializeField]
    Sprite [] Logo_Character;
    [SerializeField]
    Text[] text_Descriptif;

    struct Stats_Character
    {
       public float speed;
       public int attack;
       public float PDV;
    }

    [SerializeField]
    GameObject Character_Selection;
    [SerializeField]
    Selection_of_character Players;

    [SerializeField]
    Image[] Image_UI;
    [SerializeField]
    Text[] Press_start;
    Stats_Character[] Characters;
    GameManager GM;

    string[] Description_Personnage;

	// Use this for initialization
	void Start () {


        GM = GameManager.Instance;

        XIM = XInputManager.Instance;

        Description_Personnage = new string[4];
        Description_Personnage[0] = "Perso 1 : hjkhvjdfsjfhsq cdyfhoihuihfqdf joifgfb hofgqdsifbdshifd hdigsifsdf uhfd fhdsofhsd fdsfhds sjf dshs";
        Description_Personnage[1] = "Perso 2 :  hjkhvjdfsjfhsq cdyfhoihuihfqdf joifgfb hofgqdsifbdshifd hdigsifsdf uhfd fhdsofhsd fdsfhds sjf dshs";
        Description_Personnage[2] = "Perso 3 :  hjkhvjdfsjfhsq cdyfhoihuihfqdf joifgfb hofgqdsifbdshifd hdigsifsdf uhfd fhdsofhsd fdsfhds sjf dshs";
        Description_Personnage[3] = "Perso 4 :  hjkhvjdfsjfhsq cdyfhoihuihfqdf joifgfb hofgqdsifbdshifd hdigsifsdf uhfd fhdsofhsd fdsfhds sjf dshs";

        
        for (int i = 0; i < 2; i++)
        {
            text_Descriptif[i].gameObject.SetActive(false);
            Image_UI[i].gameObject.SetActive(false);
            Press_start[i].gameObject.SetActive(true);
        }

        //Players = Character_Selection.GetComponentsInChildren<GameObject>();
    }
	
	// Update is called once per frame
	void LateUpdate () {

        Players = Character_Selection.GetComponentInChildren<Selection_of_character>();
        for (int i = 0; i < XIM.NumControllers; i++)
        {
            text_Descriptif[i].gameObject.SetActive(true);
            Image_UI[i].gameObject.SetActive(true);
            Press_start[i].gameObject.SetActive(false);
        }
     
            Update_Texte();
       
    }

    void Update_Texte()
    {

        for (int i = 0; i < XIM.NumControllers; i++)
        {
            //text_Descriptif[i].text = "Speed : " + Players[i].GetComponent<Selection_of_character>().Return_ID_player(Players[i].GetComponent<Selection_of_character>().Return_Id_Player()-1).speed + "\n Life : " + Players[i].GetComponent<Selection_of_character>().Return_Stats(Players[i].GetComponent<Selection_of_character>().Return_Id_Player()-1).PDV+ "\n Attaque: " + Players[i].GetComponent<Selection_of_character>().Return_Stats(Players[i].GetComponent<Selection_of_character>().Return_Id_Player()-1).attack;
            
   
            text_Descriptif[i].text = "Speed : " +  GM.Sauvegarde_state[Players.GetComponent<Selection_of_character>().Return_ID_player[i]].speed

               + "\nAttack : " + GM.Sauvegarde_state[Players.GetComponent<Selection_of_character>().Return_ID_player[i]].attack 

                + "\nLife point : " + GM.Sauvegarde_state[Players.GetComponent<Selection_of_character>().Return_ID_player[i]].PDV; 

            //text_Descriptif[i].text = "Speed : " + GM.Sauvegarde_state[0].speed;



            Image_UI[i].sprite = Logo_Character[Players.Return_ID_player[i]];

            //Fanion_UI[i].sprite = UI_fanion[Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player() - 1).selectCharact];
         //text_Descriptif[i].text = Description_Personnage[(int)Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player() - 1).selectCharact-1];        
        }
    }
}
