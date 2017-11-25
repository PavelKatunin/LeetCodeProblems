#import <XCTest/XCTest.h>
#import "LongestIncreasingSubsequence.h"
#import "LongestIncreasingSubsequenceNLogN.h"
#import "LongestIncreasingSubsequenceNSquared.h"

@interface LongestIncreasingSubsequenceTests : XCTestCase

@end

@implementation LongestIncreasingSubsequenceTests

- (void)testSubsequences {
    NSArray *inputArray = @[ @10, @9, @2, @5, @3, @7, @101, @18];
    NSInteger expectedResult = 4;
    
    XCTAssertEqual(expectedResult,
                   [[[LongestIncreasingSubsequenceNLogN alloc] init] longestIncreasingSubsequenceLength:inputArray]);
    
    XCTAssertEqual(expectedResult,
                   [[[LongestIncreasingSubsequenceNSquared alloc] init] longestIncreasingSubsequenceLength:inputArray]);
    
    NSArray *inputArray2 = @[ @0, @8, @4, @12, @2, @10, @6, @14, @1, @9, @5, @13, @3, @11, @7, @15];
    NSInteger expectedResult2 = 6;
    
    XCTAssertEqual(expectedResult2,
                   [[[LongestIncreasingSubsequenceNLogN alloc] init] longestIncreasingSubsequenceLength:inputArray2]);
    
    XCTAssertEqual(expectedResult2,
                   [[[LongestIncreasingSubsequenceNSquared alloc] init] longestIncreasingSubsequenceLength:inputArray2]);
}

@end
