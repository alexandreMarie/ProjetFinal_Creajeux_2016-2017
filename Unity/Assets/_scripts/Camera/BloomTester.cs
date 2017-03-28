using UnityEngine;

public class BloomTester : MonoBehaviour
{
    public BloomController bc;
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
            if (bc.TurnBloom == true)
                bc.TurnBloom = false;
            else
                bc.TurnBloom = true;
    }
}