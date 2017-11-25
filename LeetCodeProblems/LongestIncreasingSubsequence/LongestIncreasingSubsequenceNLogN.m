#import "LongestIncreasingSubsequenceNLogN.h"

@implementation LongestIncreasingSubsequenceNLogN

// O( n * log n )

- (NSInteger)longestIncreasingSubsequenceLength:(NSArray<NSNumber *> *)numbers {
    
    if (numbers.count <= 1) {
        return 1;
    }
    
    NSInteger lis_length = -1;
    
    NSMutableArray<NSNumber *> *subsequence = [[NSMutableArray alloc] initWithCapacity:numbers.count];
    NSMutableArray<NSNumber *> *indexes = [[NSMutableArray alloc] initWithCapacity:numbers.count];
    
    for (int i = 0; i < numbers.count; ++i) {
        [subsequence addObject:@(INT_MAX)];
        [indexes addObject:@(INT_MAX)];
    }
    
    subsequence[0] = numbers[0];
    indexes[0] = @0;
    
    for (int i = 1; i < numbers.count; ++i) {
        indexes[i] = @([self ceilIndexFromNumbers:subsequence
                                        startLeft:0
                                       startRight:i
                                              key:numbers[i].integerValue]);
        
        if (lis_length < indexes[i].integerValue) {
            lis_length = indexes[i].integerValue;
        }
        
    }
    
    return lis_length + 1;
}

- (NSInteger)ceilIndexFromNumbers:(NSMutableArray<NSNumber *> *)subsequence
                        startLeft:(NSInteger)startLeft
                       startRight:(NSInteger)startRight
                              key:(NSInteger)key {
    NSInteger mid = 0;
    NSInteger left = startLeft;
    NSInteger right = startRight;
    
    NSInteger ceilIndex = 0;
    
    BOOL ceilIndexFound = NO;
    
    for (mid = (left + right) / 2; left <= right; mid = (left + right) / 2) {
        if (subsequence[mid].integerValue > key) {
            right = mid - 1;
        }
        else if (subsequence[mid].integerValue == key) {
            ceilIndex = mid;
            ceilIndexFound = YES;
            break;
        }
        else if (mid + 1 <= right && subsequence[mid + 1].integerValue >= key) {
            subsequence[mid + 1] = @(key);
            ceilIndex = mid + 1;
            ceilIndexFound = YES;
            break;
        } else {
            left = mid + 1;
        }
    }
    
    if (!ceilIndexFound) {
        if (mid == left) {
            subsequence[mid] = @(key);
            ceilIndex = mid;
        }
        else {
            subsequence[mid + 1] = @(key);
            ceilIndex = mid + 1;
        }
    }
    
    return ceilIndex;
}

@end
