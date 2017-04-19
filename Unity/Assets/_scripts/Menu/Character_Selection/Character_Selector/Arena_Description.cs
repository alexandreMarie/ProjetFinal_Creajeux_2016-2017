using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Arena_Description : MonoBehaviour {

    string [] Arena_Descrpitif;
    string[] Name;

    [SerializeField]
    Arena_Selection Script_arena;

    [SerializeField]
    Text[] text_UI;
	// Use this for initialization
	void Start () {


       // Script_arena = Script_arena.GetComponent<Arena_Selection>();
        text_UI = GetComponentsInChildren<Text>();
        Arena_Descrpitif = new string[4];
        Name = new string[4];
        Arena_Descrpitif[0] = "L'aréne de lilith est a l'image de la reine des succubes \n provocante héxubhérante";
        Arena_Descrpitif[1] = "Modele 3D 2";
        Arena_Descrpitif[2] = "Modele 3D 3";
        Arena_Descrpitif[3] = "Modele 3D 4";

        Name[0] = "Luxury bath";
        Name[1] = "ARENA 2";
        Name[2] = "ARENA 3";
        Name[3] = "ARENA 4";
    }
	
	// Update is called once per frame
	void Update () {
        Update_right_text();
       
        Update_Text();
    }

    void Update_right_text()
    {
        text_UI[0].text = Arena_Descrpitif[Script_arena.Get_ID()-1];
    }


    void Update_Text()
    {
        text_UI[1].text = Name[Script_arena.Get_ID()-1];
    }
}
