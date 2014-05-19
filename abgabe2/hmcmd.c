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

int iteration_setter(int,char**);
void cpi(int,int);
void mips_measurement(int);

int hmcmd_cmd(int argc, char *argv[])
{
	if (argc == 0) {
		printf("usage:  [no usage information available, yet] \n");
	} else if (!strcmp(argv[0], "cpi_nop")) {
		cpi(iteration_setter(argc, argv), 0);
        } else if (!strcmp(argv[0], "cpi_add")) {
                cpi(iteration_setter(argc, argv), 1);
        } else if (!strcmp(argv[0], "cpi_div")) {
                cpi(iteration_setter(argc, argv), 2);
        } else if (!strcmp(argv[0], "cpi_lbz")) {
                cpi(iteration_setter(argc, argv), 3);
        } else if (!strcmp(argv[0], "mips")) {
                mips_measurement(iteration_setter(argc, argv));
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

int iteration_setter(int argc, char** argv)
{
	int iterations = 10000000;
        if (argc == 2) {
                //parsing of string arguments into int value
                iterations = strtoul(argv[1], 0, 0);
        } else if (argc != 1) {
                printf("Invalid number of arguments!\n");
                return(0);
        }
	return(iterations);
}

void cpi(int iterations, int cmd)
{
        int i;
	//Variable timestamp
        int start;
	int end;
        //Schleife benoetigt pro Durchgang 6 Takte ohne den Schleifenkoerper
	switch(cmd)
	{
		case 0:
			start = timestamp;
		        for (i = 0; i < iterations; i++) {
	               		asm volatile ("l.nop");
                	}
			end = timestamp;
		break;

                case 1:
                        start = timestamp;
                        for (i = 0; i < iterations; i++) {
                                asm volatile ("l.add r20, r21, r22" ::: "r20");
                        }
                        end = timestamp;
                break;

                case 2:
                        start = timestamp;
                        for (i = 0; i < iterations; i++) {
                                asm volatile ("l.div r20, r21, r22" ::: "r20");
                        }
                        end = timestamp;
                break;

                case 3:
                        start = timestamp;
                        for (i = 0; i < iterations; i++) {
                                asm volatile ("l.lbz r20, 0(r21)" ::: "r20");
                        }
                        end = timestamp;
                break;
		
		default:
			start = 0;
			end = 0;
	}
        int elapsed_ms = end - start;
        double tacts = elapsed_ms / 0.000002;
        int for_tacts = 6 * iterations;
        int real_tacts = (int)tacts - for_tacts;
	int cpi = real_tacts / iterations;
        printf("ms: %i\n", elapsed_ms);
        printf("tacts: %i\n", (int)tacts);
        printf("real_tacts: %i\n", real_tacts);
	printf("cpi: %i\n", cpi);
}

void mips_measurement(int iterations)
{
	int i;
	int number;
	asm volatile ("l.nop");
	//int start = timestamp;
	for (i = 0; i < iterations; i++) {
		number = 5 + 4;
		number = number * number;
		number = number / 3;
		number = number - 50;
		if (number < 0) {
			number = 0;
		} else {
			number = number;
		}
	}
	//int end = timestamp;
	asm volatile ("l.nop");
	//int time = end - start;
	printf("number: %i\n", number);
}
