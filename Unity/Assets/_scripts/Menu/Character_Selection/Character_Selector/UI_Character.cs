using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using XInputDotNetPure;
public class UI_Character : MonoBehaviour {
    XInputManager XIM;

    [SerializeField]
    Sprite[] UI_fanion;
    [SerializeField]
    Sprite[] logo_Character;
    [SerializeField]
    Text[] text_Descriptif;

    [SerializeField]
    Menu_UI_Update[] menu_ui_update;
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
    Image[] image_UI;
    [SerializeField]
    Text[] press_start;
    Stats_Character[] Characters;
    GameManager GM;

    string[] Description_Personnage;
    int Laste_ID_connected;
    int Indice_Player = 0;
    // Use this for initialization
    void Start() {


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
            image_UI[i].gameObject.SetActive(false);
            Press_start[i].gameObject.SetActive(true);
            menu_ui_update[i].GetComponent<Menu_UI_Update>().enabled = false;
        }

      
        //Players = Character_Selection.GetComponentsInChildren<GameObject>();
    }

    // Update is called once per frame
    void LateUpdate() {
        Indice_Player = XIM.NumControllers;
        Players = Character_Selection.GetComponentInChildren<Selection_of_character>();
        //for (int i = 0; i < XIM.NumControllers; i++)
        //{
        //    text_Descriptif[i].gameObject.SetActive(true);
        //    Image_UI[i].gameObject.SetActive(true);
        //    press_start[i].gameObject.SetActive(false);
        //}


        for (int i = 0; i < 2; i++)
        {
            if (i <= Indice_Player - 1)
            {
                menu_ui_update[i].GetComponent<Menu_UI_Update>().enabled = true;
                menu_ui_update[i].Is_active = true;

            }
            if (i > Indice_Player - 1)
            {
               menu_ui_update[i].Is_active = false;
                //menu_ui_update[i].GetComponent<Menu_UI_Update>().enabled = false;
            }
        }


        Update_Texte();
        Laste_ID_connected = XIM.NumControllers;
    }

    void Update_Texte()
    {
        //if (XIM.NumControllers != Laste_ID_connected)
        //{
        //    for (int i = 0; i < 2; i++)
        //    {

        //        if (i <= XIM.NumControllers - 1)
        //        {
        //            text_Descriptif[i].gameObject.SetActive(true);
        //            image_UI[i].gameObject.SetActive(true);
        //            press_start[i].gameObject.SetActive(false);
        //        }


        //        if (i >= XIM.NumControllers - 1)
        //        {
        //            text_Descriptif[i].gameObject.SetActive(false);
        //            image_UI[i].gameObject.SetActive(false);
        //            press_start[i].gameObject.SetActive(true);
        //        }

        //        //text_Descriptif[i].text = "Speed : " + Players[i].GetComponent<Selection_of_character>().Return_ID_player(Players[i].GetComponent<Selection_of_character>().Return_Id_Player()-1).speed + "\n Life : " + Players[i].GetComponent<Selection_of_character>().Return_Stats(Players[i].GetComponent<Selection_of_character>().Return_Id_Player()-1).PDV+ "\n Attaque: " + Players[i].GetComponent<Selection_of_character>().Return_Stats(Players[i].GetComponent<Selection_of_character>().Return_Id_Player()-1).attack;
        //    }
        //}



        //Fanion_UI[i].sprite = UI_fanion[Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player() - 1).selectCharact];
        //text_Descriptif[i].text = Description_Personnage[(int)Players[i].GetComponent<Character_Selection>().Return_Stats(Players[i].GetComponent<Character_Selection>().Return_Id_Player() - 1).selectCharact-1];        
    }

    public Text[] Text_Descriptife
    {
        get
        {
            return text_Descriptif;
        }
    }

    public Text[] Press_start
    {
        get
        {
            return press_start;
        }
    }
    public Image[] Image_UI
       {
        get
        {
            return image_UI;
        }
    }
    public Sprite[] Logo_Character
    {
        get
        {
            return logo_Character;
        }
    }

}