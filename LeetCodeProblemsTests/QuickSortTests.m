#import <XCTest/XCTest.h>
#import "QuickSort.h"

// https://en.wikipedia.org/wiki/Quicksort

@interface QuickSortTests : XCTestCase

@end

@implementation QuickSortTests

- (void)testPositives {
    NSArray *array = @[@(100), @(10), @(300), @(30), @(1), @(1), @(0), @(2), @(100), @(150), @(1000)];
    
    NSMutableArray *mutableArray = [array mutableCopy];
    
    NSArray *resultArray = [[[QuickSort alloc] init] quickSort:mutableArray];
    NSArray *expectedArray = @[@(0), @(1), @(1), @(2), @(10), @(30), @(100), @(100), @(150), @(300), @(1000)];
    
    XCTAssertEqualObjects(resultArray, expectedArray);
}

- (void)testNegatives {
    NSArray *array = @[@(-100), @(-10), @(-200), @(-30), @(-1), @(-1)];
    
    NSMutableArray *mutableArray = [array mutableCopy];
    
    NSArray *resultArray = [[[QuickSort alloc] init] quickSort:mutableArray];
    NSArray *expectedArray = @[@(-200), @(-100), @(-30), @(-10), @(-1), @(-1)];
    
    XCTAssertEqualObjects(resultArray, expectedArray);
}

- (void)testSameValues {
    NSArray *array = @[@(53), @(53), @(53), @(53), @(53), @(53)];
    
    NSMutableArray *mutableArray = [array mutableCopy];
    
    NSArray *resultArray = [[[QuickSort alloc] init] quickSort:mutableArray];
    NSArray *expectedArray = @[@(53), @(53), @(53), @(53), @(53), @(53)];
    
    XCTAssertEqualObjects(resultArray, expectedArray);
}

- (void)testZeros {
    NSArray *array = @[@(0), @(0), @(0), @(0), @(0), @(0)];
    
    NSMutableArray *mutableArray = [array mutableCopy];
    
    NSArray *resultArray = [[[QuickSort alloc] init] quickSort:mutableArray];
    NSArray *expectedArray = @[@(0), @(0), @(0), @(0), @(0), @(0)];
    
    XCTAssertEqualObjects(resultArray, expectedArray);
}

- (void)testTwoValues {
    NSArray *array = @[@(2), @(1), @(2), @(1)];
    
    NSMutableArray *mutableArray = [array mutableCopy];
    
    NSArray *resultArray = [[[QuickSort alloc] init] quickSort:mutableArray];
    NSArray *expectedArray = @[@(1), @(1), @(2), @(2)];
    
    XCTAssertEqualObjects(resultArray, expectedArray);
}

- (void)testMixed {
    NSArray *array = @[@(2), @(1), @(-100), @(40), @(-50)];
    
    NSMutableArray *mutableArray = [array mutableCopy];
    
    NSArray *resultArray = [[[QuickSort alloc] init] quickSort:mutableArray];
    NSArray *expectedArray = @[@(-100), @(-50), @(1), @(2), @(40)];
    
    XCTAssertEqualObjects(resultArray, expectedArray);
}

- (void)testSorted {
    NSArray *array = @[@(0), @(1), @(2), @(3), @(4)];
    
    NSMutableArray *mutableArray = [array mutableCopy];
    
    NSArray *resultArray = [[[QuickSort alloc] init] quickSort:mutableArray];
    NSArray *expectedArray = @[@(0), @(1), @(2), @(3), @(4)];
    
    XCTAssertEqualObjects(resultArray, expectedArray);
}

- (void)testReversed {
    NSArray *array = @[@(4), @(3), @(2), @(1), @(0)];
    
    NSMutableArray *mutableArray = [array mutableCopy];
    
    NSArray *resultArray = [[[QuickSort alloc] init] quickSort:mutableArray];
    NSArray *expectedArray = @[@(0), @(1), @(2), @(3), @(4)];
    
    XCTAssertEqualObjects(resultArray, expectedArray);
}

- (void)test1Element {
    NSArray *array = @[@(1)];
    
    NSMutableArray *mutableArray = [array mutableCopy];
    
    NSArray *resultArray = [[[QuickSort alloc] init] quickSort:mutableArray];
    NSArray *expectedArray = @[@(1)];
    
    XCTAssertEqualObjects(resultArray, expectedArray);
}

- (void)test2Elements {
    NSArray *array = @[@(2), @(1)];
    
    NSMutableArray *mutableArray = [array mutableCopy];
    
    NSArray *resultArray = [[[QuickSort alloc] init] quickSort:mutableArray];
    NSArray *expectedArray = @[@(1), @(2)];
    
    XCTAssertEqualObjects(resultArray, expectedArray);
}

- (void)test3Elements {
    NSArray *array = @[@(2), @(1), @(500)];
    
    NSMutableArray *mutableArray = [array mutableCopy];
    
    NSArray *resultArray = [[[QuickSort alloc] init] quickSort:mutableArray];
    NSArray *expectedArray = @[@(1), @(2), @(500)];
    
    XCTAssertEqualObjects(resultArray, expectedArray);
}

@end
