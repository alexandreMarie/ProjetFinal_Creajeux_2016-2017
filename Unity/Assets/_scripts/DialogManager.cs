using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;

public class DialogManager : MonoBehaviour
{
    public string dialog, characterName;
    public int lineNum;
    public bool playerTalking;
    List<Button> buttons = new List<Button>();

    public Text dialogBox;
    public Text nameBox;
    public GameObject choiceBox;
}