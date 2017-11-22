#import <XCTest/XCTest.h>
#import "HighestProductOf3Integers.h"

// https://www.interviewcake.com/question/objectivec/highest-product-of-3

@interface HighestProductOf3IntegersTests : XCTestCase

@end

@implementation HighestProductOf3IntegersTests

- (void)testPositives {
    NSArray *inputArray = @[ @10, @12, @3, @2, @8];
    NSInteger expectedResult = 960;
    
    XCTAssertEqual([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray],
                   expectedResult);
}

- (void)testNegatives {
    NSArray *inputArray = @[ @(-10), @(-12), @(-3), @(-2), @(-8)];
    NSInteger expectedResult = -48;
    
    XCTAssertEqual([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray],
                   expectedResult);
}

- (void)testMixedNumbers {
    NSArray *inputArray = @[  @(-10), @(-10), @1, @3, @2];
    NSInteger expectedResult = 300;
    
    XCTAssertEqual([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray],
                   expectedResult);
    
    NSArray *inputArray2 = @[@(1), @(10), @(-5), @(1), @(-100)];
    NSInteger expectedResult2 = 5000;
    
    XCTAssertEqual([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray2],
                   expectedResult2);
}

- (void)test2Negatives {
    NSArray *inputArray = @[ @10, @12, @3, @2, @8, @(-15), @(-13)];
    NSInteger expectedResult = 2340;
    
    XCTAssertEqual([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray],
                   expectedResult);
}

- (void)test3Negatives {
    NSArray *inputArray = @[ @10, @12, @3, @2, @(-8), @(-15), @(-13)];
    NSInteger expectedResult = 2340;
    
    XCTAssertEqual([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray],
                   expectedResult);
}

- (void)test2Positives {
    NSArray *inputArray = @[ @120, @130, @(-1), @(-2)];
    NSInteger expectedResult = 260;
    
    XCTAssertEqual([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray],
                   expectedResult);
}

- (void)test1Positive {
    NSArray *inputArray = @[ @130, @(-1), @(-2), @(-500)];
    NSInteger expectedResult = 130000;
    
    XCTAssertEqual([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray],
                   expectedResult);
}

- (void)test1Negative {
    NSArray *inputArray = @[ @130, @(-1), @(2), @(500)];
    NSInteger expectedResult = 130000;
    
    XCTAssertEqual([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray],
                   expectedResult);
}

- (void)test1Number {
    NSArray *inputArray = @[ @130 ];
    
    XCTAssertThrows([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray]);
}

- (void)test2Numbers {
    NSArray *inputArray = @[ @130 , @1];
    
    XCTAssertThrows([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray]);
}

- (void)test3Numbers {
    NSArray *inputArray = @[ @130, @(2), @1];
    NSInteger expectedResult = 260;
    
    XCTAssertEqual([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray],
                   expectedResult);
}

- (void)testZeros {
    NSArray *inputArray = @[ @0, @0, @0];
    NSInteger expectedResult = 0;
    
    XCTAssertEqual([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray],
                   expectedResult);
}

- (void)testOnes {
    NSArray *inputArray = @[ @1, @1, @1];
    NSInteger expectedResult = 1;
    
    XCTAssertEqual([[[HighestProductOf3Integers alloc] init] highestProductOf3Integers:inputArray],
                   expectedResult);
}

@end
