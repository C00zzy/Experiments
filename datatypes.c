#include<stdio.h>
int main()
{
	printf("Alright - How are you doing");
	
	int num1, num2;
	float fraction;
	char character;
	
	printf("Put your numbers");
	
	scanf("%d%i", &num1, &num2);
        printf ("Put the numbers", num1, num2);
	
	printf("\n\nDecimal Number\n");
	scanf("%f",&fraction);
	printf("The number you printed is %f", fraction);

	printf("Enter a word");
	scanf("%c" ,&character);
        printf("The word you entered is %c", character);


	printf("Congrats");

	return 0;
}
