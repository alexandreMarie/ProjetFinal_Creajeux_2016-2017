using UnityEngine;
using Random = UnityEngine.Random;

public class AddLife : MonoBehaviour
{

    private void OnTriggerEnter(Collider other)
    {
        Horsemen player = other.GetComponent<Horsemen>();
        if (player != null)
        {
            player.Life += (int)(Random.Range(1, 3) * 10f);
        }

        //Destroy(this.gameObject);

        this.gameObject.SetActive(false);

    }
}
