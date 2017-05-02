using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Menu_UI_Update : MonoBehaviour {
    GameManager GM;
    XInputManager XIM;
    [SerializeField]
    int Players_ID;
    UI_Character UC;
    [SerializeField]
    Selection_of_character Players;
    bool is_active;
    bool Last_Bool;
    int Number_Of_Players;



    // Use this for initialization
    void Start () {
        UC = GetComponentInParent<UI_Character>();
        GM = GameManager.Instance;
        XIM = XInputManager.Instance;


    }
	
	// Update is called once per frame
	void Update () {
        Number_Of_Players = XIM.NumControllers;

        if (Is_active != Last_Bool)
        {
            if (is_active == true)
            {
              
                UC.Text_Descriptife[Players_ID].gameObject.SetActive(true);
                UC.Image_UI[Players_ID].gameObject.SetActive(true);
                UC.Press_start[Players_ID].gameObject.SetActive(false);
            }


            else if (is_active == false)
            {
                UC.Text_Descriptife[Players_ID].gameObject.SetActive(false);
                UC.Image_UI[Players_ID].gameObject.SetActive(false);
                UC.Press_start[Players_ID].gameObject.SetActive(true);
            }
        }

            Last_Bool = is_active;
        if (is_active == true)
        {
            Update_text();
        }
    }

    void Update_text()
    {
       

            UC.Text_Descriptife[Players_ID].text = "Speed : " + GM.Sauvegarde_state[Players.GetComponent<Selection_of_character>().Return_ID_player[Players_ID]].speed

               + "\nAttack : " + GM.Sauvegarde_state[Players.GetComponent<Selection_of_character>().Return_ID_player[Players_ID]].attack

                + "\nLife point : " + GM.Sauvegarde_state[Players.GetComponent<Selection_of_character>().Return_ID_player[Players_ID]].PDV;

            //text_Descriptif[i].text = "Speed : " + GM.Sauvegarde_state[0].speed;


            UC.Image_UI[Players_ID].sprite = UC.Logo_Character[Players.Return_ID_player[Players_ID]];
            UC.lore_perso[Players_ID].text = UC.Description_Personnage[Players.GetComponent<Selection_of_character>().Return_ID_player[Players_ID]];

     
    }

    public bool Is_active
    {
        get
        {
           return is_active;
        }
        set
        {
            is_active = value;
        }
    }
}
