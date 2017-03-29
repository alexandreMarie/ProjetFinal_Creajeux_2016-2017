using UnityEngine;

public class LightTester : MonoBehaviour
{

    public LightsController lc;
    public EmissiveController ec;
    public BloomController bc;

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            if (lc.TurnLight == true)
            {
                // les lumieres sont allumées
                lc.TurnLight = false;
                ec.TurnEmissive = true;
                bc.TurnBloom = true;
            }
            else
            {
                lc.TurnLight = true;
                ec.TurnEmissive = false;
                bc.TurnBloom = false;
            }
        }
    }
}