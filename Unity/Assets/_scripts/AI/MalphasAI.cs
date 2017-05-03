using System.Collections;
using UnityEngine;

public class MalphasAI : MonoBehaviour
{
    [SerializeField]
    private GameObject crow = null;
    [SerializeField]
    private GameObject arenaWalls = null;

    private Patterns Malphas;

	void Start ()
    {
        StartCoroutine(WallMovement());
        StartCoroutine(Crow());
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
            for (int i = 0; i < 15; i++)
            {
                newPosY -= 0.1f;
                arenaWalls.transform.localPosition = new Vector3(originalPos.x, newPosY, originalPos.z);
                yield return new WaitForSeconds(0.05f);
            }

            yield return new WaitForSeconds(2.0f);

            for (int i = 0; i < 15; i++)
            {
                newPosY += 0.1f;
                arenaWalls.transform.localPosition = new Vector3(originalPos.x, newPosY, originalPos.z);
                yield return new WaitForSeconds(0.05f);
            }

            yield return new WaitForSeconds(2.0f);
        }
    }

    private IEnumerator Crow()
    {
        Instantiate(crow);
        yield return new WaitForSeconds(2.0f);
    }
}