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
	// Use this for initialization
	void Start () {
        XIM = XInputManager.Instance;
        SC.GetComponentInParent<Selection_of_character>();
        _animator = GetComponent<Animator>();
        ID = new int[2];

        for (int i = 0; i < 2; i++)
        {
            ID[i] = 1;
        }
    }
	
	// Update is called once per frame
	void Update () {
        for (int i = 0; i < XIM.NumControllers; i++)
        {
            ID [i] = SC.Return_ID_player[i];
           
        }
        _animator.SetInteger("ID_character", ID[Player-1]);
    }

    public Vector3 Position_Perso()
    {
        return transform.position;
    }
}
