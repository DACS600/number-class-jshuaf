#import <Foundation/Foundation.h>

#import "Number.h"

int main (int argc, char * argv[]) {
	@autoreleasepool {
		char numberInput[50];
		printf("Enter a number to get information about: ");
		fgets(numberInput, 50, stdin);
		NSString *stringInput = [NSString stringWithUTF8String: numberInput];
		while ([stringInput characterAtIndex: 0] != 48 && ![stringInput integerValue]) {
			printf("We couldn't detect your number. Please try again: ");
			fgets(numberInput, 50, stdin);
			stringInput = [NSString stringWithUTF8String: numberInput];
		}

		Number *myNumber = [[Number alloc] init: [stringInput integerValue]];
		printf("The number %d is \e[1m%seven\e[m\n", myNumber.value, [myNumber isEven] ? "" : "not ");
		printf("It is \e[1m%sprime\e[m\n", [myNumber isPrime] ? "" : "not ");
		printf("The sum of its digits is \e[1m%d\e[m\n", [myNumber sumOfDigits]);
		printf("The number of digits is \e[1m%d\e[m\n", [myNumber numberOfDigits]);
		printf("The largest digit is \e[1m%d\e[m\n", [myNumber largestDigit]);
		printf("It is \e[1m%sa perfect square\e[m\n", [myNumber isPerfectSquare] ? "" : "not ");
		printf("The nearest perfect square is \e[1m%d\e[m\n", [myNumber nearestPerfectSquare]);
	}
	return 0;
}
