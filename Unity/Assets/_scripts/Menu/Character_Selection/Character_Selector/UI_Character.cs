using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class UI_Character : MonoBehaviour {
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
    Character_Selection[] Players;
    Text[] TextsUI;
    [SerializeField]
    Image[] Image_UI;
    [SerializeField]
    Image[] Fanion_UI;
    Stats_Character[] Characters;


    string[] Description_Personnage;

	// Use this for initialization
	void Start () {
        Description_Personnage = new string[4];
        Description_Personnage[0] = "Perso 1 : ";
        Description_Personnage[1] = "Perso 2 : ";
        Description_Personnage[2] = "Perso 3 : ";
        Description_Personnage[3] = "Perso 4 : ";
        TextsUI = GetComponentsInChildren<Text>();
        //Players = Character_Selection.GetComponentsInChildren<GameObject>();
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
         Image_UI[i].sprite = Logo_Character[(int)Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player() - 1).selectCharact-1];
         //Fanion_UI[i].sprite = UI_fanion[Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player() - 1).selectCharact];
         text_Descriptif[i].text = Description_Personnage[(int)Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player() - 1).selectCharact-1];        
        }
    }
}
