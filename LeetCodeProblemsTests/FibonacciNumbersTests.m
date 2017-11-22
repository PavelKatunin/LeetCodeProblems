#import <XCTest/XCTest.h>
#import "FibonacciNumbers.h"

@interface FibonacciNumbersTests : XCTestCase

@end

@implementation FibonacciNumbersTests

- (void)test0 {
    NSInteger inputIndex = 0;
    NSInteger expectedResult = 0;
    
    XCTAssertEqual([[[FibonacciNumbers alloc] init] numberForIndex:inputIndex], expectedResult);
}

- (void)test1 {
    NSInteger inputIndex = 1;
    NSInteger expectedResult = 1;
    
    XCTAssertEqual([[[FibonacciNumbers alloc] init] numberForIndex:inputIndex], expectedResult);
}

- (void)test2 {
    NSInteger inputIndex = 2;
    NSInteger expectedResult = 1;
    
    XCTAssertEqual([[[FibonacciNumbers alloc] init] numberForIndex:inputIndex], expectedResult);
}

- (void)test3 {
    NSInteger inputIndex = 3;
    NSInteger expectedResult = 2;
    
    XCTAssertEqual([[[FibonacciNumbers alloc] init] numberForIndex:inputIndex], expectedResult);
}

- (void)test4 {
    NSInteger inputIndex = 4;
    NSInteger expectedResult = 3;
    
    XCTAssertEqual([[[FibonacciNumbers alloc] init] numberForIndex:inputIndex], expectedResult);
}

- (void)test5 {
    NSInteger inputIndex = 5;
    NSInteger expectedResult = 5;
    
    XCTAssertEqual([[[FibonacciNumbers alloc] init] numberForIndex:inputIndex], expectedResult);
}

- (void)test6 {
    NSInteger inputIndex = 6;
    NSInteger expectedResult = 8;
    
    XCTAssertEqual([[[FibonacciNumbers alloc] init] numberForIndex:inputIndex], expectedResult);
}

- (void)test10 {
    NSInteger inputIndex = 7;
    NSInteger expectedResult = 13;
    
    XCTAssertEqual([[[FibonacciNumbers alloc] init] numberForIndex:inputIndex], expectedResult);
}

@end
