using UnityEngine;

public class Crow : MonoBehaviour
{
    [SerializeField]
    private float destroyTime = 5.0f;
    [SerializeField]
    [Range(1.0f, 20.0f)]
    private float speed = 5.0f;

    private NavMeshAgent crowNavMesh = null;
    private GameManager gm = null;
     
	void Start ()
    {
        gm = GameManager.Instance;
        crowNavMesh = GetComponent<NavMeshAgent>();
        crowNavMesh.speed = speed;
	}

	void Update ()
    {
        crowNavMesh.SetDestination(GameObject.FindGameObjectsWithTag("Player")[0].transform.position);
	}
}