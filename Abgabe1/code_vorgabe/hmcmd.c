/************************************************************************
 *                                                                      *
 *     University of Applied Sciences Munich: Computer Architecture     *
 *                     ADDITIONAL COMMANDS FOR ORPMON                   *
 *                                                                      *
 * -------------------------------------------------------------------- *
 * Version: 1.0
 * Authors:
 * Date:
 * Group:
 * Semester:
 * Additional Notes:
 * -------------------------------------------------------------------- *
 * This file / the orpmon tool are under the GNU General Public License *
 ************************************************************************/

#include "common.h"
#include "support.h"
#include "spi.h"

int hmcmd_cmd(int argc, char *argv[])
{
	if (argc == 0) {
		printf("usage:  [no usage information available, yet] \n");
	} else if (argc == 1) {
		if (!strcmp(argv[0], "hello")) {
			printf("Hello from University of Applied Sciences, Munich, Germany! \n");
		} 
	} else {
		printf("Invalid number of arguments!\n");
	}

	return 0;
}

void module_hmcmd_init(void)
{
	register_command("hmcmd", "", "additional commands and tests by University of Applied Sciences Munich", hmcmd_cmd);
}
