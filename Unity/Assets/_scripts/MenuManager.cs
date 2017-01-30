using UnityEngine;
using System.Collections;

public class MenuManager : MonoBehaviour {

    // Partie singleton + DontDestroyOnLoad
    private static MenuManager instance = null;
    public static MenuManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = new GameObject("MenuManager").AddComponent<MenuManager>();
                DontDestroyOnLoad(instance);
            }
            return instance;
        }

        private set {}
    }

    public enum StateMenu
    {
        Logo,
        Title,
        MainMenu,
        Options,
        CharacterSelect,
        ArenaSelect,
        DemonSelect,
        Exit,
        None
    }

    [SerializeField]
    private StateMenu stateMenu = StateMenu.Logo;

    [SerializeField]
    private Animator currentAnim = null;

    public void SetState(StateMenu _stateMenu)
    {
        stateMenu = _stateMenu;
    }

    // Use this for initialization
    void Start () {
        //currentAnim = FindObjectsOfType<Animator>() as Animator[];
        //currentAnim = GameObject.Find("Fade_StudioLogo").GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
        switch (stateMenu)
        {
            case StateMenu.Logo:
                break;
            case StateMenu.Title:
                break;
            case StateMenu.MainMenu:
                break;
            case StateMenu.Options:
                break;
            case StateMenu.CharacterSelect:
                break;
            case StateMenu.ArenaSelect:
                break;
            case StateMenu.DemonSelect:
                break;
            case StateMenu.Exit:
                break;
            default:
                break;
        }
    }
}
