#import "QuickSort.h"

@implementation QuickSort

// O(n * log n)

- (NSArray *)quickSort:(NSMutableArray<NSNumber *> *)numbers {
    NSMutableArray *lessArray = [[NSMutableArray alloc] init];
    NSMutableArray *greaterArray = [[NSMutableArray alloc] init];
    if ([numbers count] < 1) {
        return nil;
    }
    
    int randomPivotPoint = arc4random() % [numbers count];
    NSNumber *pivotValue = [numbers objectAtIndex:randomPivotPoint];
    [numbers removeObjectAtIndex:randomPivotPoint];
    
    for (NSNumber *num in numbers) {
        if (num.integerValue < pivotValue.integerValue) {
            [lessArray addObject:num];
        } else {
            [greaterArray addObject:num];
        }
    }
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    [sortedArray addObjectsFromArray:[self quickSort:lessArray]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quickSort:greaterArray]];
    return sortedArray;
}

@end
