/************************************************************************
 *                                                                      *
 *     University of Applied Sciences Munich: Computer Architecture     *
 *                     ADDITIONAL COMMANDS FOR ORPMON                   *
 *                                                                      *
 * -------------------------------------------------------------------- *
 * Version: 1.0
 * Authors: Jennifer Liebel, Stefan Weiberg
 * Date: 19.05.2014
 * Group: -
 * Semester: 4
 * Additional Notes:
 * -------------------------------------------------------------------- *
 * This file / the orpmon tool are under the GNU General Public License *
 ************************************************************************/

#include "common.h"
#include "support.h"
#include "spi.h"
#define NR_ELEMENTS 100
#define STRINGI(x) #x
#define STR(x) STRINGI(x)

int iteration_setter(int,char**);
void cpi(int,int);
void mips_measurement(int);
void branch(int);
int cpi_calc(int,int,int);
void do_count();
void do_count_cmov();
void do_count_partial();
void raw();
void not_raw();

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
	} else if (!strcmp(argv[0], "branch")) {
                branch(iteration_setter(argc, argv));
        } else if (!strcmp(argv[0], "mips")) {
                mips_measurement(iteration_setter(argc, argv));
	} else if (!strcmp(argv[0], "do_count")) {
                do_count();
        } else if (!strcmp(argv[0], "do_count_cmov")) {
                do_count_cmov();
        } else if (!strcmp(argv[0], "do_count_partial")) {
                do_count_partial();
        } else if (!strcmp(argv[0], "raw")) {
                raw();
        } else if (!strcmp(argv[0], "not_raw")) {
                not_raw();
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
	printf("cpi: %i\n", cpi_calc(iterations, start, end));
}

void mips_measurement(int iterations)
{
	int i;
	int number = 0;
	int instructions = 11;
	asm volatile ("l.nop");
	int start = timestamp;
	for (i = 0; i < iterations; i++) {
		number = 5 + 4;
		number = number + 4;
		number = 5 + number;
		number = 8 + number;
		number = number + 7;
		number = number * number;
		number = number / 3;
		number = number - 50;
		if (number < 0) {
			number = 0;
		} else {
			number = number;
		}
	}
	int end = timestamp;
	asm volatile ("l.nop");
	int time = end - start;
	printf("number: %i\n", number);
	printf("MIPS: %i\n", (instructions * iterations) / (time * 10000));
}

void branch(int iterations)
{
        int i;
        int start;
        int end;
	int value = 1;
        //Schleife benoetigt pro Durchgang 6 Takte ohne den Schleifenkoerper

        start = timestamp;
        for (i = 0; i < iterations; i++) {
                asm volatile (
			"l.sfgtsi %0,0\n"
			"l.bf 1f\n"
			"1:\n"
			: : "r" (value)
		);
        }
        end = timestamp;

        printf("cpi success: %i\n", cpi_calc(iterations, start, end));
	
        start = timestamp;
        for (i = 0; i < iterations; i++) {
	        asm volatile (
                        "l.sfgtsi %0,0\n"
                        "l.bnf 1f\n"
                        "1:\n"
			: : "r" (value)
                );
        }
        end = timestamp;

	printf("cpi not: %i\n", cpi_calc(iterations, start, end));
}

int cpi_calc(int iterations, int start, int end) {
        int elapsed_ms = end - start;
        double tacts = elapsed_ms / 0.000002;
        int for_tacts = 6 * iterations;
        int real_tacts = (int)tacts - for_tacts;
        int cpi = real_tacts / iterations;
        printf("ms: %i\n", elapsed_ms);
        printf("tacts: %i\n", (int)tacts);
        printf("real_tacts: %i\n", real_tacts);
        return cpi;
}

void do_count()
{
        int input[NR_ELEMENTS];
	int start;
	int end;
	int j;
	for(j=0; j<NR_ELEMENTS; j++) {
		input[j]=j-1000;
	}
	int i;
	int runs = 100000;
	int result = 0;

	start = timestamp;
	for(i=0; i<runs; i++){
                asm volatile (
                "l.addi r5,r0,0\n"
                "l.addi %0,r0,0\n"
                "l.addi r6,%1,0\n"

                "0:\n"
                "l.lwz r7,0(r6)\n"
                "l.sfgtsi r7,0\n"
                "l.bnf 1f\n"
                "l.addi r6,r6,4\n"
                "l.addi %0,%0,1\n"

                "1:\n"
                "l.sfeqi r5, " STR(NR_ELEMENTS-1) "\n"
                "l.bnf 0b\n"
                "l.addi r5,r5,1\n"
                : "=r" (result) : "r" (input) : "r5","r6","r7");
        }
	end = timestamp;

	printf("Number of positive elements: %i\n", result);
	printf("cpi: %i\n", cpi_calc(runs, start, end));
}

void do_count_cmov()
{
        int input[NR_ELEMENTS];
        int start;
        int end;
        int j;
        for(j=0; j<NR_ELEMENTS; j++) {
                input[j]=j-1000;
        }
        int i;
        int runs = 100000;
        int result = 0;

        start = timestamp;
        for(i=0; i<runs; i++){
                asm volatile (
                "l.addi r5,r0,0\n"
                "l.addi %0,r0,0\n"
                "l.addi r6,%1,0\n"

                "0:\n"
                "l.lwz r7,0(r6)\n"
                
                "l.addi r60,%0,1\n"
                "l.sfgtsi r7,0\n"
		"l.cmov %0,r60,%0\n"
		"l.addi r6,r6,4\n"
                "l.sfeqi r5, " STR(NR_ELEMENTS-1) "\n"
                "l.bnf 0b\n"
                "l.addi r5,r5,1\n"
                : "=r" (result) : "r" (input) : "r5","r6","r7");
        }
        end = timestamp;

        printf("Number of positive elements: %i\n", result);
        printf("cpi: %i\n", cpi_calc(runs, start, end));
}

void do_count_partial()
{
        int input[NR_ELEMENTS];
        int start;
        int end;
        int j;
        for(j=0; j<NR_ELEMENTS; j++) {
                input[j]=j-1000;
        }
        int i;
        int runs = 100000;
        int result = 0;

        start = timestamp;
        for(i=0; i<runs; i++){
                asm volatile (
                "l.addi r5,r0,0\n"
                "l.addi %0,r0,0\n"
                "l.addi r6,%1,0\n"

                "0:\n"
                "l.lwz r7,0(r6)\n"

                "l.addi r60,%0,1\n"
                "l.sfgtsi r7,0\n"
                "l.cmov %0,r60,%0\n"
                "l.addi r6,r6,4\n"
		

		"l.lwz r7,0(r6)\n"

                "l.addi r60,%0,1\n"
                "l.sfgtsi r7,0\n"
                "l.cmov %0,r60,%0\n"
                "l.addi r6,r6,4\n"

		
		"l.lwz r7,0(r6)\n"

                "l.addi r60,%0,1\n"
                "l.sfgtsi r7,0\n"
                "l.cmov %0,r60,%0\n"
                "l.addi r6,r6,4\n"


		"l.lwz r7,0(r6)\n"

                "l.addi r60,%0,1\n"
                "l.sfgtsi r7,0\n"
                "l.cmov %0,r60,%0\n"
                "l.addi r6,r6,4\n"
                
		"l.sfeqi r5, " STR(NR_ELEMENTS-4) "\n"
                "l.bnf 0b\n"
                "l.addi r5,r5,4\n"
                : "=r" (result) : "r" (input) : "r5","r6","r7");
        }

        end = timestamp;

        printf("Number of positive elements: %i\n", result);
        printf("cpi: %i\n", cpi_calc(runs, start, end));
}

void raw() {
	int i;
	int runs = 10000000;
        int start = timestamp;
        for (i = 0; i < runs; i++) {
        	asm volatile (
			"l.add r20, r21, r22\n" 
			"l.add r30, r20, r31\n"
			::: "r20", "r30");
        }
        int end = timestamp;

	printf("cpi: %i\n", cpi_calc(runs, start, end));
}

void not_raw() {
	int i;
	int runs = 10000000;
        int start = timestamp;
        for (i = 0; i < runs; i++) {
                asm volatile (
                        "l.add r20, r21, r22\n" 
                        "l.add r30, r32, r31\n"
                        ::: "r20", "r30");
        }
        int end = timestamp;

        printf("cpi: %i\n", cpi_calc(runs, start, end));
}
