using UnityEngine;
using System.Collections;

public class UpdateSpecial : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        Horsemen player = other.GetComponent<Horsemen>();
        if (player != null)
        {
            player.Stamina = 100;
        }

        this.gameObject.SetActive(false);

        //Destroy(this.gameObject);
    }
}
