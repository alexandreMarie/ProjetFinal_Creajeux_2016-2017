using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class LifeManager : MonoBehaviour
{
    
    Image imgFilledBar;
    Image ImgFille_Endurance_Bar;
    public void Start()
    {
        // Récup de l'image configurée en filled
        Image[] imgsFilledBar = GetComponentsInChildren<Image>();
        foreach (Image image in imgsFilledBar)
        {
            if (image.transform.tag == "LifeBar")
            {
                imgFilledBar = image;
            }
            if (image.transform.tag == "StaminaBar")
            {
                ImgFille_Endurance_Bar = image;
            }
        }

        if (imgFilledBar == null)
        {
            Debug.Log("Aucune image trouvée");
        }
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
        {
            //Debug.Log("Max_Value : " + _value / (float)_maxValue);
            imgFilledBar.fillAmount = _value / (float)_maxValue;
        }

      
    }
    public void UpdateStaminaBar(int _maxValue, int _value)
    {
        if (ImgFille_Endurance_Bar != null)
        {
            ImgFille_Endurance_Bar.fillAmount = _value / (float)_maxValue;
        }
    }
 }
