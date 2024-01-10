#include <stdio.h>
int main(void)
{
char operator;
	double num1,num2, result;
	printf("Enter a operator (+,  *, /): ");
	scanf("   %c", &operator);
	printf("Enter two numbers...\n");
	scanf("%lf %lf", &num1, &num2);
	switch (operator) {
		case'+':
		result = num1 + num2;
		break;

		case '*':
		result =num1 * num2;
		break;
		case '/':
		if (num2 != 0) {
		result = num1 / num2;
		}
		else {
		printf("You can't divide by 0 dumbass");
		return 1;
		}
		break;
		default:
		printf("Wrong!!");
		return 1;
		}
		printf("Result: %.2f %c %.2f = %.2f\n", num1, operator, num2);


}
