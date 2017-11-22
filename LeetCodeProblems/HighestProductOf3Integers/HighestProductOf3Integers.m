#import "HighestProductOf3Integers.h"
#import "QuickSort.h"

@implementation HighestProductOf3Integers

// n log n

- (NSInteger)highestProductOf3Integers:(NSArray *)integersArray {
    NSAssert(integersArray.count > 2, @"Input count should be more than 2");
    
    NSArray<NSNumber *> *sorted = [[[QuickSort alloc] init] quickSort:[integersArray mutableCopy]];
    
    BOOL hasTwoNegatives = sorted[0].integerValue < 0 && sorted[1].integerValue < 0;
    
    NSInteger result = 0;
    NSInteger elementsCount = sorted.count;
    
    NSInteger productOfTheHighest = sorted[elementsCount - 1].integerValue
                                    * sorted[elementsCount - 2].integerValue
                                    * sorted[elementsCount - 3].integerValue;
    
    if (hasTwoNegatives) {
        result = MAX(sorted[0].integerValue * sorted[1].integerValue * sorted.lastObject.integerValue,
                     productOfTheHighest);
    }
    else {
        result = productOfTheHighest;
    }
    
    return result;
}

@end
