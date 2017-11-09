#import <XCTest/XCTest.h>
#import "NumberOf1Bits.h"

@interface NumberOf1BitsTests : XCTestCase

@end

// https://leetcode.com/problems/number-of-1-bits/description/

@implementation NumberOf1BitsTests

- (void)testZero {
    int64_t input = 0;
    NSUInteger expected = 0;
    
    XCTAssertEqual([[[NumberOf1Bits alloc] init] numberOfOneBits:input], expected);
}

- (void)testNegative {
    int64_t input = -1;
    NSUInteger expected = 64;
    
    XCTAssertEqual([[[NumberOf1Bits alloc] init] numberOfOneBits:input], expected);
}

- (void)testPositive {
    int64_t input = 7;
    NSUInteger expected = 3;
    
    XCTAssertEqual([[[NumberOf1Bits alloc] init] numberOfOneBits:input], expected);
}

- (void)testMaxValue {
    int64_t input = INT64_MAX;
    NSUInteger expected = 63;
    
    XCTAssertEqual([[[NumberOf1Bits alloc] init] numberOfOneBits:input], expected);
}

- (void)testMinValue {
    int64_t input = INT64_MIN;
    NSUInteger expected = 1;
    
    XCTAssertEqual([[[NumberOf1Bits alloc] init] numberOfOneBits:input], expected);
}

@end
