using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Impulse : MonoBehaviour
{
	public Rigidbody[] rigidbodiesToPush;

	public bool fixedForce = false;

	public float sphereRadius = 2.25f;
	public float impulseForce = 600f;

	void OnDrawGizmos()
	{
		Gizmos.DrawIcon(transform.position, "Scripting_ImpulseForce.png", true);

		Gizmos.color = Color.white;
		Gizmos.DrawWireSphere(transform.position, sphereRadius);
	}

	private void Start()
    {
		DoImpulse();
	}

    public void DoImpulse()
	{
		Collider[] colliders = Physics.OverlapSphere(transform.position, sphereRadius);
		foreach (Collider nearby in colliders)
		{
			Rigidbody rigid = nearby.gameObject.GetComponent<Rigidbody>();
			if (rigid != null)
			{
				if (fixedForce)
				{
					rigid.GetComponent<Rigidbody>().velocity = Vector3.zero;
				}

				rigid.AddExplosionForce(impulseForce, transform.position, sphereRadius);
			}
		}
	}
}