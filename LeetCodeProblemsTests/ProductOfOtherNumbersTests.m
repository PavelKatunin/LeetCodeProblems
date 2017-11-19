#import <XCTest/XCTest.h>
#import "ProductOfOtherNumbers.h"

// https://www.interviewcake.com/question/objectivec/product-of-other-numbers

@interface ProductOfOtherNumbersTests : XCTestCase

@end

@implementation ProductOfOtherNumbersTests

- (void)testMixedNumbers {
    NSArray *inputNumbers = @[@(1), @(7), @(3), @(4)];
    NSArray *expectedArray = @[@(84), @(12), @(28), @(21)];
    
    XCTAssertEqualObjects([[[ProductOfOtherNumbers alloc] init] productOfOthers:inputNumbers], expectedArray);
}

- (void)testOneNumber {
    NSArray *inputNumbers = @[@(1)];
    
    XCTAssertThrows([[[ProductOfOtherNumbers alloc] init] productOfOthers:inputNumbers]);
}

- (void)testTwoNumbers {
    NSArray *inputNumbers = @[@(10), @(20)];
    NSArray *expectedArray = @[@(20) , @(10)];
    
    XCTAssertEqualObjects([[[ProductOfOtherNumbers alloc] init] productOfOthers:inputNumbers], expectedArray);
}

- (void)testZero {
    NSArray *inputNumbers = @[@(1), @(0), @(3), @(4)];
    NSArray *expectedArray = @[@(0), @(12), @(0), @(0)];
    
    XCTAssertEqualObjects([[[ProductOfOtherNumbers alloc] init] productOfOthers:inputNumbers], expectedArray);
}

- (void)testZeros {
    NSArray *inputNumbers = @[@(1), @(0), @(3), @(0)];
    NSArray *expectedArray = @[@(0), @(0), @(0), @(0)];
    
    XCTAssertEqualObjects([[[ProductOfOtherNumbers alloc] init] productOfOthers:inputNumbers], expectedArray);
}

@end
