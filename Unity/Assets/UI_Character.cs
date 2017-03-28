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
    GameObject[] Players;
    Text[] TextsUI;
    Stats_Character[] Characters;
	// Use this for initialization
	void Start () {
        TextsUI = GetComponentsInChildren<Text>();
        Characters = new Stats_Character[4];
        for(int i =0; i < Characters.Length; i++)
        {
            Characters[i].attack =(int)Random.RandomRange(1.0f, 50.0f);
            Characters[i].speed = Random.RandomRange(1.0f, 50.0f);
            Characters[i].PDV = Random.RandomRange(1.0f, 50.0f);
        }
     }
	
	// Update is called once per frame
	void Update () {
        Update_Texte();
    }

    void Update_Texte()
    {
        for (int i = 0; i < 2; i++)
        {  
         TextsUI[i].text = "Speed : " + Characters[Players[i].GetComponent<Character_Selection>().Return_Id_Player()-1].speed + "\n Life : " + Characters[Players[i].GetComponent<Character_Selection>().Return_Id_Player()-1].PDV + "\n Attaque: " + Characters[Players[i].GetComponent<Character_Selection>().Return_Id_Player()-1].attack;
        }
    }
}
