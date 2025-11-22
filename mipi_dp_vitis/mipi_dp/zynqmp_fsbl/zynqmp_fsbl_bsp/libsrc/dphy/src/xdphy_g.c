#include "xdphy.h"

XDphy_Config XDphy_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,mipi-dphy-4.3", /* compatible */
		0x1000, /* reg */
		0x1fff, /* xlnx,highaddr */
		0x0, /* xlnx,dphy-mode */
		0x0, /* xlnx,dphy-en-reg-if */
		0x2, /* xlnx,dphy-lanes */
		0x0, /* xlnx,dphy-esc-clk-period */
		0x0, /* xlnx,dphy-esc-timeout */
		0x3e8, /* xlnx,hs-line-rate */
		0x0, /* xlnx,dphy-hs-timeout */
		0x0, /* xlnx,dphy-stable-clk-period */
		0x0, /* xlnx,dphy-txpll-clkin-period */
		0x0, /* xlnx,dphy-wakeup */
		0x0, /* xlnx,dphy-en-timeout-regs */
		0x0 /* xlnx,dphy-hs-settle-ns */
	},
	{
		"xlnx,mipi-dphy-4.3", /* compatible */
		0x1000, /* reg */
		0x1fff, /* xlnx,highaddr */
		0x0, /* xlnx,dphy-mode */
		0x0, /* xlnx,dphy-en-reg-if */
		0x2, /* xlnx,dphy-lanes */
		0x0, /* xlnx,dphy-esc-clk-period */
		0x0, /* xlnx,dphy-esc-timeout */
		0x3e8, /* xlnx,hs-line-rate */
		0x0, /* xlnx,dphy-hs-timeout */
		0x0, /* xlnx,dphy-stable-clk-period */
		0x0, /* xlnx,dphy-txpll-clkin-period */
		0x0, /* xlnx,dphy-wakeup */
		0x0, /* xlnx,dphy-en-timeout-regs */
		0x0 /* xlnx,dphy-hs-settle-ns */
	},
	 {
		 NULL
	}
};