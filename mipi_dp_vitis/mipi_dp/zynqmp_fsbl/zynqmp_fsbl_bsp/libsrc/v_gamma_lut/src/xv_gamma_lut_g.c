#include "xv_gamma_lut.h"

XV_gamma_lut_Config XV_gamma_lut_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,v-gamma-lut-1.1", /* compatible */
		0x80070000, /* reg */
		0x1, /* xlnx,samples-per-clock */
		0x780, /* xlnx,max-cols */
		0x438, /* xlnx,max-rows */
		0xa /* xlnx,max-data-width */
	},
	{
		"xlnx,v-gamma-lut-1.1", /* compatible */
		0x80080000, /* reg */
		0x1, /* xlnx,samples-per-clock */
		0x780, /* xlnx,max-cols */
		0x438, /* xlnx,max-rows */
		0xa /* xlnx,max-data-width */
	},
	 {
		 NULL
	}
};