using UnityEngine;
using UnityEngine.UI;
using System;

public class LifeManager : MonoBehaviour
{
    public enum LifeCharacter
    {
        Player1,
        Player2,
        Boss
    }

    public LifeCharacter lifeCharacter;

    Image imgFilledBar;
    Image imgFilledEnduranceBar;
    Image imgEmblem;

    [SerializeField]
    Sprite[] imgEmblems = new Sprite[4];

    private void FindImages()
    {
        Image[] imgsFilledBar = GetComponentsInChildren<Image>();
        foreach (Image image in imgsFilledBar)
        {
            if (image.transform.tag == "LifeBar")
                imgFilledBar = image;

            if (image.transform.tag == "StaminaBar")
                imgFilledEnduranceBar = image;

            if (image.gameObject.name == "IMG_Emblem")
                imgEmblem = image;
        }
    }

    private void Start()
    {
        if (lifeCharacter == LifeCharacter.Player2 && GameManager.Instance.NbPlayers == 1)
        {
            this.gameObject.SetActive(false); // ne marchera surement pas 2 fois
        }
    }

    /*public void Start()
    {
        // Récup de l'image configurée en filled
        Image[] imgsFilledBar = GetComponentsInChildren<Image>();

        foreach (Image image in imgsFilledBar)
        {
            if (image.transform.tag == "LifeBar")
                imgFilledBar = image;

            if (image.transform.tag == "StaminaBar")
                imgFilledEnduranceBar = image;

            if (image.gameObject.name == "IMG_Emblem")
                imgEmblem = image;
        }

        if (lifeCharacter != LifeCharacter.Boss)
        {

            if (imgFilledBar == null)
                Debug.Log("Aucune image trouvée");

            if (imgFilledEnduranceBar == null)
                Debug.Log("Aucune image trouvée");

            if (imgEmblem == null)
                Debug.Log("Aucun emblème trouvé");
        }
    }
    */
    /// <summary>
    /// MAJ de la lifebar du joueur
    /// </summary>
    /// <param name="_maxValue">Nombre de pdv max du joueur</param>
    /// <param name="_value">Nombre de pdv restants du joueur</param>
    public void UpdateLifeBar(int _maxValue, int _value)
    {
        // MAJ de l'UI seulement quand appelée
        if (imgFilledBar != null)
            imgFilledBar.fillAmount = _value / (float)_maxValue;
    }

    public void UpdateStaminaBar(int _maxValue, int _value)
    {
        if (imgFilledEnduranceBar != null)
            imgFilledEnduranceBar.fillAmount = _value / (float)_maxValue;
        else
        {
            FindImages();
            imgFilledEnduranceBar.fillAmount = _value / (float)_maxValue;
        }
    }

    public void UpdateEmblem(Type type)
    {
        if (imgEmblem == null)
        {
            FindImages();
        }
        if (type == typeof(War))
        {
            imgEmblem.sprite = imgEmblems[(int)Character_Selection.SelectCharact.War - 1];
        }
        else if (type == typeof(Death))
        {
            imgEmblem.sprite = imgEmblems[(int)Character_Selection.SelectCharact.Death - 1];
        }
        else if (type == typeof(Pestilence))
        {
            imgEmblem.sprite = imgEmblems[(int)Character_Selection.SelectCharact.Pestilence - 1];
        }
        else if (type == typeof(Famine))
        {
            imgEmblem.sprite = imgEmblems[(int)Character_Selection.SelectCharact.Famine - 1];
        }
    }
}