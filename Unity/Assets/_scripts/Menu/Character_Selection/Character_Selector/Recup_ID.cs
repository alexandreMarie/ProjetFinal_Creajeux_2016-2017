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
    int  ID;
    [SerializeField]
    int Player;
    int LastID;
    int Number_of_players;
    int Last_Number_Player;
	// Use this for initialization
	void Start () {
        XIM = XInputManager.Instance;
        SC.GetComponentInParent<Selection_of_character>();
        //_animator = GetComponentInParent<Animator>();
    
    }


	// Update is called once per frame
	void Update () {
   
                ID = SC.Return_ID_player[Player];

                _animator.SetInteger("ID_character", ID);

                LastID = ID;
     
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
