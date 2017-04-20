using UnityEngine;
using System.Collections;

public class PowerUpScript : MonoBehaviour
{
    Vector3 position;
    private float speed = 0.1f;

    bool asLanded = false;
    public bool AsLanded
    {
        get
        {
            return asLanded;
        }

        set
        {
            asLanded = value;
        }
    }

    private void OnEnable()
    {
        asLanded = false;
        position = this.transform.position;
    }

    // Update is called once per frame
    void Update () {
        if (asLanded == false)
        {
            position.y -= Time.deltaTime * speed;
            this.transform.position = position;
            if (position.y <= 0.5f)
            {
                asLanded = true;
            }
        }
	}
}
