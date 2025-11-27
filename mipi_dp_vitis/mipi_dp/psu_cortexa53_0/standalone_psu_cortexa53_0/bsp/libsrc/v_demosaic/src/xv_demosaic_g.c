#include "xv_demosaic.h"

XV_demosaic_Config XV_demosaic_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,v-demosaic-1.1", /* compatible */
		0x80050000, /* reg */
		0x1, /* xlnx,samples-per-clock */
		0x780, /* xlnx,max-cols */
		0x438, /* xlnx,max-rows */
		0xa, /* xlnx,max-data-width */
		0x0, /* xlnx,algorithm */
		0xffff, /* interrupts */
		0xffff /* interrupt-parent */
	},
	{
		"xlnx,v-demosaic-1.1", /* compatible */
		0x80060000, /* reg */
		0x1, /* xlnx,samples-per-clock */
		0x780, /* xlnx,max-cols */
		0x438, /* xlnx,max-rows */
		0xa, /* xlnx,max-data-width */
		0x0, /* xlnx,algorithm */
		0xffff, /* interrupts */
		0xffff /* interrupt-parent */
	},
	 {
		 NULL
	}
};