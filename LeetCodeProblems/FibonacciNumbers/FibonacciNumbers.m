#import "FibonacciNumbers.h"

@implementation FibonacciNumbers

- (NSInteger)numberForIndex:(NSInteger)index {
    NSMutableArray<NSNumber *> *numbers = [@[@0, @1] mutableCopy];
    
    for (int i = 2; i < index + 1; i++) {
        [numbers addObject:@(numbers[i - 1].integerValue + numbers[i - 2].integerValue)];
    }
    
    return numbers[index].integerValue;
}

@end
