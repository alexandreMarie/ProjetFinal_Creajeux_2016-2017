using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class UI_Character : MonoBehaviour {
    [SerializeField]
    Sprite [] Logo_Character;
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
    Image[] Image_UI;
    Stats_Character[] Characters;
	// Use this for initialization
	void Start () {
        TextsUI = GetComponentsInChildren<Text>();
        //Players = Character_Selection.GetComponentsInChildren<GameObject>();
        Image_UI = GetComponentsInChildren<Image>();
    }
	
	// Update is called once per frame
	void Update () {
        Players = Character_Selection.GetComponentsInChildren<Character_Selection>();
        Update_Texte();
    }

    void Update_Texte()
    {
        for (int i = 0; i < Players.Length; i++)
        {  
         TextsUI[i].text = "Speed : " + Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player()-1).speed + "\n Life : " + Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player()-1).PDV+ "\n Attaque: " + Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player()-1).attack;
         Image_UI[i].sprite = Logo_Character[Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player() - 1).ID_perso];
        }
    }
}
