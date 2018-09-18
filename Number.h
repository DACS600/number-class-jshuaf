#import <Foundation/Foundation.h>

@interface Number: NSObject {
	int value;
}

-(id) init: (int) v;
-(int) value;
-(bool) isEven;
-(bool) isPrime;
-(int) sumOfDigits;
-(int) numberOfDigits;
-(int) largestDigit;
-(bool) isPerfectSquare;
-(int) nearestPerfectSquare;

@end
