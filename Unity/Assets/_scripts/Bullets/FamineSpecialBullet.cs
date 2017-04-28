using UnityEngine;

public class FamineSpecialBullet : MonoBehaviour {

    ParticleSystem ps;

    Transform boss;

    [SerializeField]
    AnimationCurve behaviour;

    float timer = 0f, duration = 5f;

    const int dmg = 10, dmgCount = 10;
    const float dmgTime = 0.5f;

	// Use this for initialization
	void Start () {
        ps = this.GetComponent<ParticleSystem>();
        boss = GameObject.FindObjectOfType<BossManager>().transform;
	}
	
	// Update is called once per frame
	void Update ()
    {
        timer += Time.unscaledDeltaTime;
        transform.position = boss.position;
        ParticleSystem.ShapeModule shape = ps.shape;
        shape.radius = behaviour.Evaluate(timer/duration);

        if (timer/duration >= 1f)
        {
            boss.GetComponent<BossManager>().StartCoroutine(boss.GetComponent<BossManager>().DamageOverTime(dmg, dmgTime, dmgCount));
            Destroy(this.gameObject, 10f);
            Destroy(this);
            // Damage over time
        }
	}
}
