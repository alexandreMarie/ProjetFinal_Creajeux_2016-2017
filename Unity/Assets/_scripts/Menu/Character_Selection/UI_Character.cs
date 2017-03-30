using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class UI_Character : MonoBehaviour {

    struct Stats_Character
    {
       public float speed;
       public int attack;
       public float PDV;
    }
    [SerializeField]
    GameObject Character_Selection;
    [SerializeField]
    Character_Selection[] Players;
    Text[] TextsUI;
    Stats_Character[] Characters;
	// Use this for initialization
	void Start () {
        TextsUI = GetComponentsInChildren<Text>();
        Players = FindObjectsOfType<Character_Selection>();
    }
	
	// Update is called once per frame
	void Update () {
        Update_Texte();
    }

    void Update_Texte()
    {
        for (int i = 0; i < 2; i++)
        {  
         TextsUI[i].text = "Speed : " + Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player()-1).speed + "\n Life : " + Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player()-1).PDV+ "\n Attaque: " + Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player()-1).attack;
        }
    }
}
