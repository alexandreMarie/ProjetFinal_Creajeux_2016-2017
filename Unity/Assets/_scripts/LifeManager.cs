using UnityEngine;
using UnityEngine.UI;

public class LifeManager : MonoBehaviour
{
    Image imgFilledBar;
    Image imgFilledEnduranceBar;

    private void FindImages()
    {
        Image[] imgsFilledBar = GetComponentsInChildren<Image>();
        foreach (Image image in imgsFilledBar)
        {
            if (image.transform.tag == "LifeBar")
                imgFilledBar = image;

            if (image.transform.tag == "StaminaBar")
                imgFilledEnduranceBar = image;
        }
    }

    public void Start()
    {
        // Récup de l'image configurée en filled
        Image[] imgsFilledBar = GetComponentsInChildren<Image>();

        foreach (Image image in imgsFilledBar)
        {
            if (image.transform.tag == "LifeBar")
                imgFilledBar = image;

            if (image.transform.tag == "StaminaBar")
                imgFilledEnduranceBar = image;
        }

        if (imgFilledBar == null)
            Debug.Log("Aucune image trouvée");

        if (imgFilledEnduranceBar == null)
            Debug.Log("Aucune image trouvée");
    }

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
}