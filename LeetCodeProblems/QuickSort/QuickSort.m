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
    
    for (NSNumber *number in numbers) {
        if (number.integerValue < pivotValue.integerValue) {
            [lessArray addObject:number];
        } else {
            [greaterArray addObject:number];
        }
    }
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    [sortedArray addObjectsFromArray:[self quickSort:lessArray]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quickSort:greaterArray]];
    return sortedArray;
}

@end
