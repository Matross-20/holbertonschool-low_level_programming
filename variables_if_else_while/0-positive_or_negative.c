#include <stdlib.h>
#include <time.h>

/**
*main-beginning of the code
*return-end product of code 
*/
int main(void)
{
	int n;

	srand(time(0));
	n = rand() - RAND_MAX / 2;
	if (n>0)
	  {
	        printf("The number is greater than 0 is positive");
	  }
	else if (n==0)
	  {
	        printf("The number is zero");
	  }    
	if (n<0)
	  {
	        printf("The number is less than 0 is negative");
	  }		  
        return (0);
}
