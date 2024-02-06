using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ImpactSound : MonoBehaviour
{
	public AudioSource audio;
	public AudioClip[] lightSounds;
	public AudioClip[] heavySounds;
	public float heavyMagnitude = 6;
	public float lightMagnitude = 3;

	void Awake()
	{
		if (audio == null)
			audio = GetComponent<AudioSource>();
	}

	void Start()
	{
		if (audio == null)
			audio = GetComponent<AudioSource>();
	}

	void OnCollisionEnter (Collision collision)
	{
		if (audio == null)
			audio = GetComponent<AudioSource>();

		if (collision.relativeVelocity.magnitude > heavyMagnitude)
		{
			audio.clip = heavySounds[Random.Range(0, heavySounds.Length)];
			audio.PlayOneShot(heavySounds[Random.Range(0, heavySounds.Length)]);
		}
		else if (collision.relativeVelocity.magnitude > lightMagnitude)
		{
			audio.clip = lightSounds[Random.Range(0, lightSounds.Length)];
			audio.PlayOneShot(lightSounds[Random.Range(0, lightSounds.Length)]);
		}
	}
}