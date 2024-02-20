using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
	public GameObject objectOfInterest;
	public float slerpingAmount = 0.1f;
	void Update()
	{
		transform.position = Vector3.Slerp(transform.position, objectOfInterest.transform.position + new Vector3(0, 0, -25), slerpingAmount);
	}
}
