using UnityEngine;
using UnityEngine.EventSystems;

public class Go_To_Crea : MonoBehaviour,IPointerDownHandler {
  public void OnPointerDown(PointerEventData eventData)
    {
        Debug.Log(this.gameObject.name + "Was clicked");
        Application.OpenURL("http://www.creajeux.fr/");
    }
}
