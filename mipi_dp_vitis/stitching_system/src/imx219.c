

#include "imx219.h"
#include "sleep.h"
#include "xiicps.h"
#include <xil_printf.h>
#include <xparameters.h>
#include <xstatus.h>

XIicPs ps_i2c0, ps_i2c1;

int imx219_init(XIicPs *iic, u32 BaseAddress) {

  XIicPs_Config *iic_config;
  u8 camera_model_id[2];

  if ((iic_config = XIicPs_LookupConfig(BaseAddress)) == NULL) {
    xil_printf("XIicPs_LookupConfig failed\r\n");
    return XST_FAILURE;
  }
  if (XIicPs_CfgInitialize(iic, iic_config, iic_config->BaseAddress) !=
      XST_SUCCESS) {
    xil_printf("XIicPs_CfgInitialize failed\r\n");
    return XST_FAILURE;
  }

  if (XIicPs_SelfTest(iic) != XST_SUCCESS) {
    xil_printf("XIicPs_SelfTest failed\r\n");
    return XST_FAILURE;
  }

  if (XIicPs_SetSClk(iic, I2C_BUS_FREQ) != XST_SUCCESS) {
    xil_printf("XIicPs_SetSClk failed\r\n");
    return XST_FAILURE;
  }

  if (XIicPs_MasterRecvPolled(iic, camera_model_id, 2, IMX219_I2C_SLAVE_ADDR) !=
      XST_SUCCESS) {
    xil_printf("imx219 receive failed\r\n");
    return XST_FAILURE;
  }

  if (camera_model_id[0] != 0x2 && camera_model_id[1] == 0x19) {
    xil_printf("could not read camera id\r\n");
    return XST_FAILURE;
  }

  imx219_write(iic, 0x30EB, 0x05);
  imx219_write(iic, 0x30EB, 0x0C);
  imx219_write(iic, 0x300A, 0xFF);
  imx219_write(iic, 0x300B, 0xFF);
  imx219_write(iic, 0x30EB, 0x05);
  imx219_write(iic, 0x30EB, 0x09);
  imx219_write(iic, 0x0114, 0x01); // 2-wire csi
  imx219_write(iic, 0x0128, 0x00); // auto MIPI global timing
  imx219_write(iic, 0x012A, 0x18); // INCK freq: 24.0Mhz
  imx219_write(iic, 0x012B, 0x00);

  imx219_write(iic, 0x015A, 0x05);

  imx219_write(iic, 0x015B, 0x00);
  imx219_write(iic, 0x0160, 0x04); // frame length lines = 1113
  imx219_write(iic, 0x0161, 0x59);
  imx219_write(iic, 0x0162, 0x0D); // line length pixels = 3448
  imx219_write(iic, 0x0163, 0x78);
  imx219_write(iic, 0x0164, 0x02); // x-start address = 680
  imx219_write(iic, 0x0165, 0xA8);
  imx219_write(iic, 0x0166, 0x0A); // x-end address = 2599
  imx219_write(iic, 0x0167, 0x27);
  imx219_write(iic, 0x0168, 0x02); // y-start address = 692
  imx219_write(iic, 0x0169, 0xB4);
  imx219_write(iic, 0x016A, 0x06); // y-end address = 1771
  imx219_write(iic, 0x016B, 0xEB);
  imx219_write(iic, 0x016C, 0x07); // x-output size = 1920
  imx219_write(iic, 0x016D, 0x80);
  imx219_write(iic, 0x016E, 0x04); // y-output size = 1080
  imx219_write(iic, 0x016F, 0x38);
  imx219_write(iic, 0x0170, 0x01); //
  imx219_write(iic, 0x0171, 0x01);
  imx219_write(iic, 0x0174, 0x00);
  imx219_write(iic, 0x0175, 0x00);
  imx219_write(iic, 0x018C, 0x0A);
  imx219_write(iic, 0x018D, 0x0A);
  imx219_write(iic, 0x0301, 0x05); // video timing pixel clock divider value = 5
  imx219_write(iic, 0x0303,
               0x01); // video timing system clock divider value = 1
  imx219_write(iic, 0x0304, 0x03); // external clock 24-27MHz
  imx219_write(iic, 0x0305, 0x03); // external clock 24-27MHz
  imx219_write(iic, 0x0306,
               0x00); // PLL Video Timing system multiplier value = 57
  imx219_write(iic, 0x0307, 0x39);
  imx219_write(iic, 0x0309, 0x0A); // output pixel clock divider value = 10
  imx219_write(iic, 0x030B, 0x01); // output system clock divider value = 1
  imx219_write(iic, 0x030C, 0x00); // PLL output system multiplier value = 114
  imx219_write(iic, 0x030D, 0x72);
  imx219_write(iic, 0x455E, 0x00);
  imx219_write(iic, 0x471E, 0x4B);
  imx219_write(iic, 0x4767, 0x0F);
  imx219_write(iic, 0x4750, 0x14);
  imx219_write(iic, 0x4540, 0x00);
  imx219_write(iic, 0x47B4, 0x14);
  imx219_write(iic, 0x4713, 0x30);
  imx219_write(iic, 0x478B, 0x10);
  imx219_write(iic, 0x478F, 0x10);
  imx219_write(iic, 0x4793, 0x10);
  imx219_write(iic, 0x4797, 0x0E);
  imx219_write(iic, 0x479B, 0x0E);
  imx219_write(iic, IMX219_ANA_GAIN_GLOBAL, 200);
  imx219_write(iic, IMX219_COARSE_INT_TIME_HI, 0x08);

  imx219_write(iic, 0x0100, 0x01);

  return XST_SUCCESS;
}

int imx219_write(XIicPs *iic, u16 addr, u8 data) {
  u8 buf[3];

  buf[0] = addr >> 8;
  buf[1] = addr & 0xff;
  buf[2] = data;

  while (TransmitFifoFill(iic) || XIicPs_BusIsBusy(iic)) {
    usleep(1);
    xil_printf("IMX219 waiting for transmit...\r\n");
  }

  if (XIicPs_MasterSendPolled(iic, buf, 3, IMX219_I2C_SLAVE_ADDR) !=
      XST_SUCCESS) {
    xil_printf("IMX219 write failed, addr: %x\r\n", addr);
    return XST_FAILURE;
  }
  usleep(1000);

  return XST_SUCCESS;
}

int imx219_read(XIicPs *iic, u16 addr, u8 *data) {
  u8 buf[2];

  buf[0] = addr >> 8;
  buf[1] = addr & 0xff;

  if (XIicPs_MasterSendPolled(iic, buf, 2, IMX219_I2C_SLAVE_ADDR) !=
      XST_SUCCESS) {
    xil_printf("IMX219 write failed\r\n");
    return XST_FAILURE;
  }
  if (XIicPs_MasterRecvPolled(iic, data, 1, IMX219_I2C_SLAVE_ADDR) !=
      XST_SUCCESS) {
    xil_printf("IMX219 receive failed\r\n");
    return XST_FAILURE;
  }
  return XST_SUCCESS;
}

void cam_init_all() {
  int status;
  status = imx219_init(&ps_i2c0, XPAR_I2C0_BASEADDR);
  if (status == XST_SUCCESS) {
    xil_printf("IMX219 cam0 initialization succeeded\n");
  } else {
    xil_printf("IMX219 cam0 initialization failed\n");
  }

  imx219_init(&ps_i2c1, XPAR_I2C1_BASEADDR);
  if (status == XST_SUCCESS) {
    xil_printf("IMX219 cam1 initialization succeeded\n");
  } else {
    xil_printf("IMX219 cam1 initialization failed\n");
  }
}