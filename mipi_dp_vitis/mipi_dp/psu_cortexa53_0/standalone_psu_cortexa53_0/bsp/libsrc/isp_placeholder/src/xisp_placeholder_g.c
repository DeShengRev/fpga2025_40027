#include "xisp_placeholder.h"

XIsp_placeholder_Config XIsp_placeholder_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,isp-placeholder-1.0", /* compatible */
		0x80020000 /* reg */
	},
	 {
		 NULL
	}
};