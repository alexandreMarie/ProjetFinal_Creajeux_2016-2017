using UnityEngine;
using System.Collections;

public class DestroyAtEndAnimation : MonoBehaviour
{

    public void DestroyAtEvent()
    {
        Destroy(this.gameObject);
    }
}
