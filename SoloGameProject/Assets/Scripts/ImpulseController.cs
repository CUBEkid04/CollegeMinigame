using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ImpulseController : MonoBehaviour
{
    public GameObject impulseSpawner;
    public Image cooldownBar;
    public Image impulseIcon;

    float timeTilNextImpulse = 1.0f;
    void Update()
    {
        if (Input.GetMouseButtonDown(0) && timeTilNextImpulse >= 1.0f)
        {
            Vector3 pos = Camera.main.ScreenToWorldPoint(Input.mousePosition);
            pos.z = 0;
            GameObject index = (GameObject)Instantiate(impulseSpawner, pos, Quaternion.identity);
            timeTilNextImpulse = 0;
        }

        if (timeTilNextImpulse < 1.0f)
        {
            if (timeTilNextImpulse <= 0.0f)
                timeTilNextImpulse = 0;
            timeTilNextImpulse += (1 * Time.deltaTime);
        }
        else
        {
            timeTilNextImpulse = 1.0f;
        }

        cooldownBar.fillAmount = timeTilNextImpulse;

        if (timeTilNextImpulse < 1.0f)
        {
            impulseIcon.color = Color.gray;
        }
        else
        {
            impulseIcon.color = Color.white;
        }
    }
}
