#import "LongestIncreasingSubsequenceNLogN.h"

@implementation LongestIncreasingSubsequenceNLogN

// O( n * log n )

- (NSInteger)longestIncreasingSubsequenceLength:(NSArray<NSNumber *> *)numbers {
    
    if (numbers.count <= 1) {
        return 1;
    }
    
    NSInteger lis_length = -1;
    
    NSMutableArray<NSNumber *> *longestIncreasingSubsequence = [[NSMutableArray alloc] initWithCapacity:numbers.count];
    NSMutableArray<NSNumber *> *indexes = [[NSMutableArray alloc] initWithCapacity:numbers.count];
    
    for (int i = 0; i < numbers.count; ++i) {
        [longestIncreasingSubsequence addObject:@(INT_MAX)];
        [indexes addObject:@(INT_MAX)];
    }
    
    longestIncreasingSubsequence[0] = numbers[0];
    
    for (int i = 1; i < numbers.count; ++i) {
        indexes[i] = @([self ceilIndexFromNumbers:longestIncreasingSubsequence
                                        startLeft:0
                                       startRight:i
                                              key:numbers[i].integerValue]);
        
        if (lis_length < indexes[i].integerValue) {
            lis_length = indexes[i].integerValue;
        }
        
    }
    
    return lis_length + 1;
}

- (NSInteger)ceilIndexFromNumbers:(NSMutableArray<NSNumber *> *)numbers
                        startLeft:(NSInteger)startLeft
                       startRight:(NSInteger)startRight
                              key:(NSInteger)key {
    NSInteger mid;
    NSInteger left = startLeft;
    NSInteger right = startRight;
    
    for (mid = (left + right) / 2; left <= right; mid = (left + right) / 2) {
        if (numbers[mid].integerValue > key) {
            right = mid - 1;
        }
        else if (numbers[mid].integerValue == key) {
            return mid;
        }
        else if (mid + 1 <= right && numbers[mid + 1].integerValue >= key) {
            numbers[mid + 1] = @(key);
            return mid + 1;
        } else {
            left = mid + 1;
        }
    }
    if (mid == left) {
        numbers[mid] = @(key);
        return mid;
    }
    numbers[mid + 1] = @(key);
    return mid + 1;
}

@end
