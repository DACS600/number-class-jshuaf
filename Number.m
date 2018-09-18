#import "Number.h"

@implementation Number

-(id) init: (int) v {
	value = v;
	return self;
}

-(int) value {
	return value;
}

-(bool) isEven {
	return value % 2 == 0;
}

-(bool) isPrime {
	if (value <= 1) {
		return false;
	} else if (value <= 3) {
		return true;
	}
	for (int i = 2; i <= sqrt(value); i++) {
		if (value % i == 0) {
			return false;
		}
	}
	return true;
}

-(int) numberOfDigits {
	int numberOfDigits = 0;
	int workingValue = value;
	while (abs(workingValue) > 0) {
		numberOfDigits += 1;
		workingValue /= 10;
	}
	return numberOfDigits;
}

-(int) sumOfDigits {
	int currentSum = 0;
	int workingValue = value;
	while (abs(workingValue) > 0) {
		currentSum += abs(workingValue % 10);
		workingValue /= 10;
	}
	return currentSum;
}

-(int) largestDigit {
	int currentLargest = (value % 10);
	int workingValue = abs(value);
	workingValue /= 10;
	while (workingValue > 0) {
		if (currentLargest < (workingValue % 10)) {
			currentLargest = workingValue % 10;
		}
		workingValue /= 10;
	}
	return currentLargest;
}

-(bool) isPerfectSquare {
	if (value < 0) {
		return false;
	}
	return pow(floor(sqrt(value)), 2) == value;
}

-(int) nearestPerfectSquare {
	if (value < 0) {
		return 0;
	}
	int lowerSquare = pow(floor(sqrt(value)), 2);
	int largerSquare = pow(ceil(sqrt(value)), 2);
	return ((largerSquare - value) > (value - lowerSquare) ? lowerSquare : largerSquare);
}

@end
