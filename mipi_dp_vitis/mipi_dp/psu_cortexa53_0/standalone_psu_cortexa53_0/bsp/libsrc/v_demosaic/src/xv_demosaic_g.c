#include "xv_demosaic.h"

XV_demosaic_Config XV_demosaic_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,v-demosaic-1.1", /* compatible */
		0x80030000, /* reg */
		0x1, /* xlnx,samples-per-clock */
		0x780, /* xlnx,max-cols */
		0x438, /* xlnx,max-rows */
		0xa, /* xlnx,max-data-width */
		0x0, /* xlnx,algorithm */
		0x405f, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	{
		"xlnx,v-demosaic-1.1", /* compatible */
		0x80040000, /* reg */
		0x1, /* xlnx,samples-per-clock */
		0x780, /* xlnx,max-cols */
		0x438, /* xlnx,max-rows */
		0xa, /* xlnx,max-data-width */
		0x0, /* xlnx,algorithm */
		0x405a, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	 {
		 NULL
	}
};