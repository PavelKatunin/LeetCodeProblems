#import "HighestProductOf3Integers.h"
#import "QuickSort.h"

@implementation HighestProductOf3Integers

// O(n)

- (NSInteger)highestProductOf3Integers:(NSArray<NSNumber *> *)integersArray {
    NSCAssert(integersArray.count >= 3, @"invalid argument: less than 3 items");
    
    NSInteger firstElement = integersArray[0].integerValue;
    NSInteger secondElement = integersArray[1].integerValue;
    NSInteger thirdElement = integersArray[2].integerValue;
    
    // we're going to start at the 3rd item (at index 2)
    // so pre-populate highests and lowests based on the first 2 items.
    // we could also start these as null and check below if they're set
    // but this is arguably cleaner
    NSInteger highest = MAX(firstElement, secondElement);
    NSInteger lowest  = MIN(firstElement, secondElement);
    
    NSInteger highestProductOf2 = firstElement * secondElement;
    NSInteger lowestProductOf2  = firstElement * secondElement;
    
    // except this one--we pre-populate it for the first *3* items.
    // this means in our first pass it'll check against itself, which is fine.
    NSInteger highestProductOf3 = firstElement * secondElement * thirdElement;
    
    // walk through items, starting at index 2
    for (NSUInteger i = 2; i < integersArray.count; i++) {
        NSInteger current = integersArray[i].integerValue;
        
        // do we have a new highest product of 3?
        // it's either the current highest,
        // or the current times the highest product of two
        // or the current times the lowest product of two
        NSInteger numberXmaxProductOf2 = current * highestProductOf2;
        NSInteger numberXminProductOf2 = current * lowestProductOf2;
        NSInteger numberXmax = current * highest;
        NSInteger numberXmin = current * lowest;
        highestProductOf3 = MAX(MAX(highestProductOf3, numberXmaxProductOf2), numberXminProductOf2);
        
        // do we have a new highest product of two?
        highestProductOf2 = MAX(MAX(highestProductOf2, numberXmax), numberXmin);
        
        // do we have a new lowest product of two?
        lowestProductOf2 = MIN(MIN(lowestProductOf2, numberXmax), numberXmin);
        
        // do we have a new highest?
        highest = MAX(highest, current);
        
        // do we have a new lowest?
        lowest = MIN(lowest, current);
    }
    
    return highestProductOf3;
}

@end
