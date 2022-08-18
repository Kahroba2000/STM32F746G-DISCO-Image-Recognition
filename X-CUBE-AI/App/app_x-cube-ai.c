
/**
  ******************************************************************************
  * @file    app_x-cube-ai.c
  * @author  X-CUBE-AI C code generator
  * @brief   AI program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

 /*
  * Description
  *   v1.0 - Minimum template to show how to use the Embedded Client API
  *          model. Only one input and one output is supported. All
  *          memory resources are allocated statically (AI_NETWORK_XX, defines
  *          are used).
  *          Re-target of the printf function is out-of-scope.
  *   v2.0 - add multiple IO and/or multiple heap support
  *
  *   For more information, see the embeded documentation:
  *
  *       [1] %X_CUBE_AI_DIR%/Documentation/index.html
  *
  *   X_CUBE_AI_DIR indicates the location where the X-CUBE-AI pack is installed
  *   typical : C:\Users\<user_name>\STM32Cube\Repository\STMicroelectronics\X-CUBE-AI\7.1.0
  */

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/

#if defined ( __ICCARM__ )
#elif defined ( __CC_ARM ) || ( __GNUC__ )
#endif

/* System headers */
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <inttypes.h>
#include <string.h>

#include "app_x-cube-ai.h"
#include "main.h"
#include "ai_datatypes_defines.h"
#include "network.h"
#include "network_data.h"
#include "global.h"

/* USER CODE BEGIN includes */

/* USER CODE END includes */

/* IO buffers ----------------------------------------------------------------*/

#if !defined(AI_NETWORK_INPUTS_IN_ACTIVATIONS)
AI_ALIGNED(4) ai_i8 data_in_1[AI_NETWORK_IN_1_SIZE_BYTES];
ai_i8* data_ins[AI_NETWORK_IN_NUM] = {
data_in_1
};
#else
ai_i8* data_ins[AI_NETWORK_IN_NUM] = {
NULL
};
#endif

#if !defined(AI_NETWORK_OUTPUTS_IN_ACTIVATIONS)
AI_ALIGNED(4) ai_i8 data_out_1[AI_NETWORK_OUT_1_SIZE_BYTES];
ai_i8* data_outs[AI_NETWORK_OUT_NUM] = {
data_out_1
};
#else
ai_i8* data_outs[AI_NETWORK_OUT_NUM] = {
NULL
};
#endif

/* Activations buffers -------------------------------------------------------*/

AI_ALIGNED(32)
static uint8_t pool0[AI_NETWORK_DATA_ACTIVATION_1_SIZE];

ai_handle data_activations0[] = {pool0};

/* AI objects ----------------------------------------------------------------*/

static ai_handle network = AI_HANDLE_NULL;

static ai_buffer* ai_input;
static ai_buffer* ai_output;

static void ai_log_err(const ai_error err, const char *fct)
{
  /* USER CODE BEGIN log */
  if (fct)
    printf("TEMPLATE - Error (%s) - type=0x%02x code=0x%02x\r\n", fct,
        err.type, err.code);
  else
    printf("TEMPLATE - Error - type=0x%02x code=0x%02x\r\n", err.type, err.code);

  do {} while (1);
  /* USER CODE END log */
}

static int ai_boostrap(ai_handle *act_addr)
{
  ai_error err;

  /* Create and initialize an instance of the model */
  err = ai_network_create_and_init(&network, act_addr, NULL);
  if (err.type != AI_ERROR_NONE) {
    ai_log_err(err, "ai_network_create_and_init");
    return -1;
  }

  ai_input = ai_network_inputs_get(network, NULL);
  ai_output = ai_network_outputs_get(network, NULL);

#if defined(AI_NETWORK_INPUTS_IN_ACTIVATIONS)
  /*  In the case where "--allocate-inputs" option is used, memory buffer can be
   *  used from the activations buffer. This is not mandatory.
   */
  for (int idx=0; idx < AI_NETWORK_IN_NUM; idx++) {
	data_ins[idx] = ai_input[idx].data;
  }
#else
  for (int idx=0; idx < AI_NETWORK_IN_NUM; idx++) {
	  ai_input[idx].data = data_ins[idx];
  }
#endif

#if defined(AI_NETWORK_OUTPUTS_IN_ACTIVATIONS)
  /*  In the case where "--allocate-outputs" option is used, memory buffer can be
   *  used from the activations buffer. This is no mandatory.
   */
  for (int idx=0; idx < AI_NETWORK_OUT_NUM; idx++) {
	data_outs[idx] = ai_output[idx].data;
  }
#else
  for (int idx=0; idx < AI_NETWORK_OUT_NUM; idx++) {
	ai_output[idx].data = data_outs[idx];
  }
#endif

  return 0;
}

static int ai_run(void)
{
  ai_i32 batch;
  batch = ai_network_run(network, ai_input, ai_output);
  if (batch != 1) {
	  while(1){

	  }
    ai_log_err(ai_network_get_error(network),
        "ai_network_run");
    return -1;
  }
  return 0;
}

/* USER CODE BEGIN 2 */
int acquire_and_process_data(ai_i8* data[])
{
//   fill the inputs of the c-model
  for (int idx=0; idx < AI_NETWORK_IN_NUM; idx++ )
  {
      data[idx] = &resize_image_buffr[0];
  }
//	RGB24_to_Float_Asym(&resize_image_buffr[0], (uint8_t*)&data[0], 5*5);


//  if (!data_ins || !data_outs || !network)
//	  return -1;
//
////  ai_input[0].n_batches = 1;
//  ai_input[0].data = AI_HANDLE_PTR(data_ins);
////  ai_output[0].n_batches = 1;
//  ai_output[0].data = AI_HANDLE_PTR(data_outs);
  return 0;
}


float post_process(uint8_t* data){
	 uint16_t i,j,x=0;
	 float dummyfloat;
	 uint32_t u32dummy;
	 float val;

	uint8_t* p = (uint8_t*)(void*)&dummyfloat;
	u32dummy = (uint8_t)data[x+3];
	u32dummy = (u32dummy << 8)|(uint8_t)data[x+2];
	u32dummy = (u32dummy << 8)|(uint8_t)data[x+1];
	u32dummy = (u32dummy << 8)|(uint8_t)data[x];
	x+=4;
	for(j=0;j<4;j++){
		p[j]=u32dummy >> (8*j);
	}

//	val=dummyfloat*100;
	val = data[0];
   return val;
}


//int post_process(ai_i8* data_outs)
//{
//	 uint16_t i,j,x=0;
//	 float dummyfloat;
//	 uint32_t u32dummy;
//
//	uint8_t* p = (uint8_t*)(void*)&dummyfloat;
//	u32dummy = (uint8_t)data_outs[x+3];
//	u32dummy = (u32dummy << 8)|(uint8_t)data_outs[x+2];
//	u32dummy = (u32dummy << 8)|(uint8_t)data_outs[x+1];
//	u32dummy = (u32dummy << 8)|(uint8_t)data_outs[x];
//	x+=4;
//	for(j=0;j<4;j++){
//		p[j]=u32dummy >> (8*j);
//	}
//
////   predictionval[0]=dummyfloat*100;
//
////   Bubblesort();
//
//   return predictionval[0];
//}
/* USER CODE END 2 */

/* Entry points --------------------------------------------------------------*/

void MX_X_CUBE_AI_Init(void)
{
    /* USER CODE BEGIN 5 */
  printf("\r\nTEMPLATE - initialization\r\n");

  ai_boostrap(data_activations0);
    /* USER CODE END 5 */
}

int MX_X_CUBE_AI_Process(void)
{

//###################################################################################
//	void MX_X_CUBE_AI_Process(void)
//	{
//	    /* USER CODE BEGIN 1 */
//	    /* USER CODE BEGIN 1 */
//		//int nb_run = 20;
//	    int res;
//	    int16_t i,x=9;
//	    int ranking[10];
//	  //  ai_float max_out;
//
//	    uint32_t Tinf1;
//	    uint32_t Tinf2;
//
//
//
//
//	    printf("AI Process\r\n");
//	    BSP_LCD_DisplayStringAtLine(19,(uint8_t*)"AI Process     ");
//	//        /* Perform the inference */
//	        RGB24_to_Float_Asym(&resize_image_buffr[0], (uint8_t*)&in_data[0], 32* 32);
//	        Tinf1 = HAL_GetTick();
//	        res = aiRun(in_data, out_data);
//	        Tinf2 = HAL_GetTick();
//	        nn_inference_time = ((Tinf2>Tinf1)?(Tinf2-Tinf1):((1<<24)-Tinf1+Tinf2));
//	        if (res) {
//	            // ...
//	        	printf("AI Error %d\r\n",res);
//	        	BSP_LCD_DisplayStringAtLine(19,(uint8_t*)"AI Error ");
//	            return;
//	        }
//
//	        printf("Display result\r\n");
//	        AI_Output_Display((uint8_t*)out_data);
//
//	        BSP_LCD_DisplayStringAtLine(x++,(uint8_t*)"Prediction/Confidence");
//	        for(i=9;i>=7;i--){
//	        if(predictionval[i]>10){
//	        	sprintf(msg,"%s (%.2f%%)",cifar10_label[class_name_index[i]],predictionval[i]);
//	        	printf("Pred. %s Confi. %.2f%%\r\n",cifar10_label[class_name_index[i]],predictionval[i]);
//	        	BSP_LCD_DisplayStringAtLine(x++,(uint8_t*)msg);
//	        }
//
//	        }
//	        sprintf(msg, "Inference: %ldms", nn_inference_time);
//	        BSP_LCD_DisplayStringAtLine(x++,(uint8_t*)msg);
//	        //HAL_Delay(1000);
//	   // }
//
//
//
//	    /* USER CODE END 1 */
//	}

//#########################################################################



    /* USER CODE BEGIN 6 */
  int res = -1;
  float conf=-100;


  printf("TEMPLATE - run - main loop\r\n");
//  RGB24_to_Float_Asym(&resize_image_buffr[0], (uint8_t*)&data_ins[0], 50* 50);

  if (network) {

      /* 1 - acquire and pre-process input data */
      res = acquire_and_process_data(data_ins);
      /* 2 - process the data - call inference engine */
      if (res == 0)
        res = ai_run();
      /* 3- post-process the predictions */
      if (res == 0)
//    	  res = post_process(data_outs);
    	  conf = post_process(data_outs);



//
//
//
////    do {
////      /* 1 - acquire and pre-process input data */
////      res = acquire_and_process_data(data_ins);
////      /* 2 - process the data - call inference engine */
////      if (res == 0)
////        res = ai_run();
////      /* 3- post-process the predictions */
////      if (res == 0)
////        res = post_process(data_outs);
////    } while (res==0);
  }
//
//  if (res) {
//    ai_error err = {AI_ERROR_INVALID_STATE, AI_ERROR_CODE_NETWORK};
//    ai_log_err(err, "Process has FAILED");
//  }
  return conf;
    /* USER CODE END 6 */
}
#ifdef __cplusplus
}
#endif
