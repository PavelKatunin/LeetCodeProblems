#import <XCTest/XCTest.h>
#import "SumOfTwoIntegers.h"

@interface SumOfTwoIntegersTests : XCTestCase

@end

// https://leetcode.com/problems/sum-of-two-integers/description/

@implementation SumOfTwoIntegersTests

- (void)testZeros {
    NSInteger firstNumber = 0;
    NSInteger secondNumber = 0;
    NSInteger expected = 0;
    
    XCTAssertEqual([[[SumOfTwoIntegers alloc] init] sumOfNumber:firstNumber
                                                    withNumber2:secondNumber], expected);
}

- (void)testMaxValues {
    NSInteger firstNumber = INT_MAX;
    NSInteger secondNumber = INT_MAX;
    NSInteger expected = 2 * INT_MAX;
    
    XCTAssertEqual([[[SumOfTwoIntegers alloc] init] sumOfNumber:firstNumber
                                                    withNumber2:secondNumber], expected);
}

- (void)testMaxAndMinValues {
    NSInteger firstNumber = INT_MAX;
    NSInteger secondNumber = INT_MIN;
    NSInteger expected = 0;
    
    XCTAssertEqual([[[SumOfTwoIntegers alloc] init] sumOfNumber:firstNumber
                                                    withNumber2:secondNumber], expected);
}

- (void)testOnes {
    NSInteger firstNumber = 1;
    NSInteger secondNumber = 1;
    NSInteger expected = 2;
    
    XCTAssertEqual([[[SumOfTwoIntegers alloc] init] sumOfNumber:firstNumber
                                                    withNumber2:secondNumber], expected);
}

- (void)testNegatives {
    NSInteger firstNumber = -100;
    NSInteger secondNumber = -10;
    NSInteger expected = -110;
    
    XCTAssertEqual([[[SumOfTwoIntegers alloc] init] sumOfNumber:firstNumber
                                                    withNumber2:secondNumber], expected);
}

- (void)testPositives {
    NSInteger firstNumber = 315;
    NSInteger secondNumber = 12;
    NSInteger expected = 327;
    
    XCTAssertEqual([[[SumOfTwoIntegers alloc] init] sumOfNumber:firstNumber
                                                    withNumber2:secondNumber], expected);
}

- (void)testFirstPositiveSecondNegative {
    NSInteger firstNumber = 123;
    NSInteger secondNumber = -12;
    NSInteger expected = 111;
    
    XCTAssertEqual([[[SumOfTwoIntegers alloc] init] sumOfNumber:firstNumber
                                                    withNumber2:secondNumber], expected);
}

- (void)testFirstNegativeSecondPositive {
    NSInteger firstNumber = -154;
    NSInteger secondNumber = 122;
    NSInteger expected = -32;
    
    XCTAssertEqual([[[SumOfTwoIntegers alloc] init] sumOfNumber:firstNumber
                                                    withNumber2:secondNumber], expected);
}

@end
