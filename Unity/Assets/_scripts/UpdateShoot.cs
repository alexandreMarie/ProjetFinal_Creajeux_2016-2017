using UnityEngine;
using System.Collections;

public class UpdateShoot : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        Horsemen player = other.GetComponent<Horsemen>();
        if (player != null)
        {
            player.UpdateLevelShoot(true);
        }

        //Destroy(this.gameObject);
        this.gameObject.SetActive(false);

    }
}
