using UnityEngine;
using System.Collections;
using XInputDotNetPure;

public class Recup_ID : MonoBehaviour {
    [SerializeField]
    Selection_of_character SC;
    [SerializeField]
    Animator _animator;
    XInputManager XIM;
    [SerializeField]
    int [] ID;
    [SerializeField]
    int Player;
    int [] LastID;
    int Number_of_players;
    int Last_Number_Player;
	// Use this for initialization
	void Start () {
        XIM = XInputManager.Instance;
        SC.GetComponentInParent<Selection_of_character>();
        //_animator = GetComponentInParent<Animator>();
        ID = new int[2];
        LastID = new int[2];
        for (int i = 0; i < 2; i++)
        {
            ID[i] = 0;
        }
    }


	// Update is called once per frame
	void Update () {
        Number_of_players = XIM.NumControllers;
        if (Number_of_players != Last_Number_Player)
        {
            ID = new int[Number_of_players];

            for (int i = 0; i < Number_of_players; i++)
            {
                ID[i] = 0;
            }
        }

        for (int i = 0; i < Number_of_players; i++)
        {

            ID [i] = SC.Return_ID_player[i];
           
           _animator.SetInteger("ID_character", ID[Player]);

            LastID[i] = ID[i];
        }
        //if (lastID != ID[Player - 1])
        //{
        //    lastID = ID[Player - 1];
        //    _animator.SetInteger("ID_character", ID[Player - 1]);
        //    _animator.SetTrigger("UpdateChar");
        //}
        Last_Number_Player = XIM.NumControllers;
    }

    void End_Down()
    {
        _animator.SetBool("Down", false);
    }

    void End_UP()
    {
        _animator.SetBool("Up", false);
    }
    public Vector3 Position_Perso()
    {
        return transform.position;
    }
}
