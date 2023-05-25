using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;
using UnityEngine.Rendering.PostProcessing;
using Unity.VisualScripting;

public class controlSaturation2 : MonoBehaviour
{
    public Volume volume;

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
       bool shifted = (bool)Variables.ActiveScene.Get("shifted");


        ColorAdjustments colorAdjustments; 
        //set grey
        if ( shifted == true)
        {
           if (volume.profile.TryGet<ColorAdjustments>(out colorAdjustments))
            {
           
                colorAdjustments.saturation.value =  -75;


            }    
        }
        //set coloured
        if ( shifted == false)
        {
           if (volume.profile.TryGet<ColorAdjustments>(out colorAdjustments))
            {
           
                colorAdjustments.saturation.value =  0;


            }    
        }
    }
}
