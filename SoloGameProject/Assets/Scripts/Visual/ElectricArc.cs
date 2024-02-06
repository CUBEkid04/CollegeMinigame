using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ElectricArc : MonoBehaviour
{
	public Transform endPos;
	public LineRenderer theRenderer;

	public float zapOffsets = -0.325f;
	[Min(0)]
	public int segs = 6;

	void Start()
	{
		theRenderer.positionCount = segs + 2;

		theRenderer.SetPosition(0, transform.position);
		theRenderer.SetPosition(segs + 1, endPos.position);

		for (int i = 1; i <= segs; i++)
		{
			theRenderer.SetPosition(i, (((endPos.position - transform.position) / (segs + 1)) * i) + transform.position + new Vector3(Random.Range(-zapOffsets, zapOffsets), Random.Range(-zapOffsets, zapOffsets), Random.Range(-zapOffsets, zapOffsets)));
		}
	}

	void FixedUpdate()
	{
		theRenderer.SetPosition(0, transform.position);
		theRenderer.SetPosition(segs + 1, endPos.position);

		for (int i = 1; i <= segs; i++)
		{
			theRenderer.SetPosition(i, (((endPos.position - transform.position) / (segs + 1)) * i) + transform.position + new Vector3(Random.Range(-zapOffsets, zapOffsets), Random.Range(-zapOffsets, zapOffsets), Random.Range(-zapOffsets, zapOffsets)));
		}
	}
}