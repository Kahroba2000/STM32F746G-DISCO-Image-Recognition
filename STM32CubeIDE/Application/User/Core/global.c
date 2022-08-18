/*
 * global.c
 *
 *  Created on: Sep 26, 2020
 *      Author: Kang Usman
 */


#include "global.h"

__attribute__((section(".ccmram"))) float predictionval;
__attribute__((section(".ccmram"))) uint8_t class_name_index[10];

 static void Bubblesort(void);

 void RGB24_to_Float_Asym(uint8_t *pSrc, uint8_t *pDst, uint32_t pixels){



	  struct rgb
	  {
	    uint8_t r, g, b;
	  };
	  struct rgbf
	  {
	    float r, g, b;
	  };
	  struct rgb *pivot = (struct rgb *) pSrc;
	  //struct rgbf *dest = (struct rgbf *) pDst;
	  float dummy;
	  uint16_t j,x=0;


	  for (int i = 0; i < pixels; i++)
	  {

	    dummy = (((float)(pivot[i].b)) / 255.0F);
	    uint8_t* pr = (uint8_t*)(void*)&dummy;


	    for(j=0;j<4;j++){
	    //for(j=3;j>0;j--){
	    	pDst[x++]=pr[j];
	    }

	    dummy = (((float)(pivot[i].g)) / 255.0F);
	    uint8_t* pg = (uint8_t*)(void*)&dummy;
	    for(j=0;j<4;j++){
	    //for(j=3;j>0;j--){
	    	pDst[x++]=pg[j];
	    }


	    dummy = (((float)(pivot[i].r)) / 255.0F);
	    uint8_t* pb = (uint8_t*)(void*)&dummy;
	    for(j=0;j<4;j++){
	    //for(j=3;j>0;j--){
	    	pDst[x++]=pb[j];
	    }


	  }



 }
