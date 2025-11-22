
#include "xil_types.h"
#include "xiicps.h"

#ifndef SRC_IMX219_H_
#define SRC_IMX219_H_

#define I2C_BUS_FREQ 400000 // in Hz

#define IMX219_ENABLE_GPIO_PIN 37
#define IMX219_I2C_SLAVE_ADDR  0x10

/* Lens */
/* infinity, 0 current */
#define IMX219_LENS_MIN					0
/* macro, max current */
#define IMX219_LENS_MAX					255
#define IMX219_LENS_STEP				1
/* AEC */
#define IMX219_DEFAULT_EXP		                10000
#define IMX219_DEFAULT_GAIN		                UINT8P8(1.0)
#define IMX219_GAIN_MIN					UINT8P8(1.0)
#define IMX219_GAIN_MAX					UINT8P8(8.0)
#define IMX219_EXP_MIN					1
#define IMX219_ANA_GAIN_GLOBAL                          0x0157
#define IMX219_COARSE_INT_TIME_HI                       0x015A
#define IMX219_COARSE_INT_TIME_LO                       0x015B
#define IMX219_FRM_LENGTH_HI                            0x0160
#define IMX219_FRM_LENGTH_LO                            0x0161



int imx219_init(XIicPs *iic, u32 BaseAddress);
int imx219_write(XIicPs *iic, u16 addr, u8 data);
int imx219_read(XIicPs *iic, u16 addr, u8 *data);
void cam_init_all();
#endif /* SRC_IMX219_H_ */
