using UnityEngine;
using System.Collections;
using XInputDotNetPure;

public class Recup_ID : MonoBehaviour {
    [SerializeField]
    Selection_of_character SC;
    Animator _animator;
    XInputManager XIM;
    [SerializeField]
    int ID;
    [SerializeField]
    int Player;
	// Use this for initialization
	void Start () {
        XIM = XInputManager.Instance;
        SC.GetComponentInParent<Selection_of_character>();
        _animator = GetComponent<Animator>();
        ID = 1;
    }
	
	// Update is called once per frame
	void Update () {
        for (int i = 0; i < XIM.NumControllers; i++)
        {
            Debug.Log("Je passe dans la boucle");
            ID = SC.Return_ID_player[i];
            Debug.Log("ID  : " + ID);
        }
        _animator.SetInteger("ID_charac", ID);
	}
}
