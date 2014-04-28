/* Test basic c functionality, and BSS section clearing.  */
#include "cpu-utils.h"
#include "lib-utils.h"

int main()
{	
	unsigned int array[100];
	unsigned int i;
	for(i=0;i<100;i++) {
		array[i]=0x42;
	}
	report(array[2]);
}
