using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Moving_Select_Logo : MonoBehaviour {

    // Use this for initialization
    [SerializeField]
    Selection_of_character SC;
    [SerializeField]
    Image Cadre_Logo;
    [SerializeField]
    Animator _animator;
    [SerializeField]
    int Player;
	void Start () {
        _animator = GetComponent<Animator>();
	}

    // Update is called once per frame
    void Update() {
        Update_Animator();

    }


    void Update_Animator()
    {
        _animator.SetInteger("ID_Character", SC.Return_ID_player[Player]);
    }
}
