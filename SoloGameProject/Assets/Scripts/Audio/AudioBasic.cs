using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioBasic : MonoBehaviour
{
	[Header("Audio Type")]
	public bool isMusic = false;
	public bool isVoice = false;
	public bool isDialogue = false;

	[Range(0.0f, 1.0f)]
	public float volumeMultiply = 1.0f;

	[Header("Properties")]
	public bool playOnSpawn = false;
	public bool spawnIsOneshot = true;

	[Range(0.0f, 1.0f)]
	public float audioVolume = 1.0f;

	[Range(0.0f, 3.0f)]
	public float defaultPitch = 1.0f;

	[Header("Random Offsets")]
	public Vector2 randomPitchOffset;
	public Vector2 randomVolumeOffset;

	[Header("Loop")]
	public bool isLooped = false;

	[Range(0.0f, 1.0f)]
	public float loopVolume = 1.0f;
	[Range(0.0f, 3.0f)]
	public float loopPitch = 1.0f;

	[Header("Sound Clips")]
	public AudioClip[] soundClips;

	private float globalUseVolume = 1.0f;
	private float globalUsePitch = 1.0f;
	public void PlaySound(bool oneShot, float multiplyVolume = 1.0f)
	{
		int soundClipToPlay = Random.Range(0,soundClips.Length);
		if (GetComponent<AudioSource>())
		{
			float useVolume = audioVolume + Random.Range(randomVolumeOffset.x,randomVolumeOffset.y);
			useVolume *= multiplyVolume;
			if (useVolume <= 0f)
				useVolume = 0f;

			float usePitch = defaultPitch + Random.Range(randomPitchOffset.x,randomPitchOffset.y);
			if (usePitch <= 0f)
				usePitch = 0f;

			globalUseVolume = useVolume;
			globalUsePitch = usePitch;

			GetComponent<AudioSource>().volume = globalUseVolume;
			GetComponent<AudioSource>().pitch = globalUsePitch;

			GetComponent<AudioSource>().volume *= volumeMultiply;

			if (oneShot)
			{
				GetComponent<AudioSource>().PlayOneShot(soundClips[soundClipToPlay], GetComponent<AudioSource>().volume);
			}
			else
			{
				GetComponent<AudioSource>().clip = soundClips[soundClipToPlay];
				GetComponent<AudioSource>().Play();
			}
		}
	}

	void Start()
	{
		if (playOnSpawn)
			PlaySound(spawnIsOneshot);
	}

	void FixedUpdate()
	{
		if (isLooped)
		{
			float loopedVolume = globalUseVolume * loopVolume;
			if (loopedVolume < 0.0f)
				loopedVolume = 0.0f;
			GetComponent<AudioSource>().volume = loopedVolume;

			float loopedPitch = globalUsePitch * loopPitch;
			if (loopedPitch < 0.0f)
				loopedPitch = 0.0f;
			GetComponent<AudioSource>().pitch = loopedPitch;
		}
	}
}