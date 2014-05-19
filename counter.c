#define NR_ELEMENTS 100
#define STRINGI(x) #x
#define STR(x) STRINGI(x)

void do_count()
{
	int input[NR_ELEMENTS];

	for(i=0; i<runs; i++){
		asm volatile (
		"l.addi r5,r0,1\n"
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
	printf("Number of positive elements: %i\n", result);
}
