using System.Collections;
using UnityEngine;

public class MalphasAI : MonoBehaviour
{
    [SerializeField]
    private GameObject arenaWalls = null;

    private Patterns Malphas;

	void Start ()
    {
        StartCoroutine(WallMovement());
	}

    void Update ()
    {
	}

    private IEnumerator WallMovement()
    {
        Vector3 originalPos = arenaWalls.transform.localPosition;
        float newPosY = originalPos.y;

        while (true)
        {
            for (int i = 0; i < 3; i++)
            {
                newPosY -= 0.5f;
                arenaWalls.transform.localPosition = new Vector3(originalPos.x, newPosY, originalPos.z);
                yield return new WaitForSeconds(0.1f);
            }

            yield return new WaitForSeconds(2.0f);

            for (int i = 0; i < 3; i++)
            {
                newPosY += 0.5f;
                arenaWalls.transform.localPosition = new Vector3(originalPos.x, newPosY, originalPos.z);
                yield return new WaitForSeconds(0.1f);
            }

            yield return new WaitForSeconds(2.0f);
        }
    }
}