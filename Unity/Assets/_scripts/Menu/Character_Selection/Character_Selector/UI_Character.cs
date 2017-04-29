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

    if(XIM.ControllersConnected[0] == false)
        {
            menu_ui_update[0].Is_active = false;
        }
        else if (XIM.ControllersConnected[0] == true)
        {
            menu_ui_update[0].enabled = true;
            menu_ui_update[0].Is_active = true;
        }

    if (XIM.ControllersConnected[1] == false)
        {
            menu_ui_update[1].Is_active = false;
        }
    else if (XIM.ControllersConnected[1] == true)
        {
            menu_ui_update[1].enabled = true;
            menu_ui_update[1].Is_active = true;
        }
        Laste_ID_connected = XIM.NumControllers;
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