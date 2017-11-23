#import <XCTest/XCTest.h>
#import "LongestIncreasingSubsequence.h"
#import "LongestIncreasingSubsequenceNLogN.h"
#import "LongestIncreasingSubsequenceNSquared.h"

static NSMutableArray *randomArray = nil;

static NSArray *PerformanceRandomTestArray() {
    
    if (randomArray == nil) {
        randomArray = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 100; i++) {
            [randomArray addObject:@(rand() % 100)];
        }
    }
    return randomArray;
}

@interface LongestIncreasingSubsequenceTests : XCTestCase

@end

@implementation LongestIncreasingSubsequenceTests

- (void)testSubsequences {
    NSArray *inputArray = @[ @10, @9, @2, @5, @3, @7, @101, @18];
    NSInteger expectedResult = 4;
    
    [self runInputArray:inputArray
         expectedLength:expectedResult
              algorithm:[[LongestIncreasingSubsequenceNLogN alloc] init]];
    
    [self runInputArray:inputArray
         expectedLength:expectedResult
              algorithm:[[LongestIncreasingSubsequenceNSquared alloc] init]];
    
    NSArray *inputArray2 = @[ @0, @8, @4, @12, @2, @10, @6, @14, @1, @9, @5, @13, @3, @11, @7, @15];
    NSInteger expectedResult2 = 6;
    
    [self runInputArray:inputArray2
         expectedLength:expectedResult2
              algorithm:[[LongestIncreasingSubsequenceNLogN alloc] init]];
    
    [self runInputArray:inputArray2
         expectedLength:expectedResult2
              algorithm:[[LongestIncreasingSubsequenceNSquared alloc] init]];
}

- (void)runInputArray:(NSArray *)inputArray
       expectedLength:(NSInteger )expectedLength
            algorithm:(id <LongestIncreasingSubsequence>)algorithm {
    XCTAssertEqual(expectedLength,
                   [algorithm longestIncreasingSubsequenceLength:inputArray]);
}

- (void)testPerformanceNLogN {
    NSArray *numbers = PerformanceRandomTestArray();
    [self measureBlock:^{
        [[[LongestIncreasingSubsequenceNLogN alloc] init] longestIncreasingSubsequenceLength:numbers];
    }];
}

- (void)testPerformanceNSquared {
    NSArray *numbers = PerformanceRandomTestArray();
    [self measureBlock:^{
        [[[LongestIncreasingSubsequenceNSquared alloc] init] longestIncreasingSubsequenceLength:numbers];
    }];
}

@end
