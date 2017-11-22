#import "LongestIncreasingSubsequence.h"

@implementation LongestIncreasingSubsequence


// n ^ 2

- (NSInteger)longestIncreasingSubsequenceLength:(NSArray<NSNumber *> *)numbers {
    
    if (numbers.count == 1) {
        return 1;
    }
    
    NSMutableArray<NSNumber *> *lengthOfSubsequence = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < numbers.count; i++) {
        [lengthOfSubsequence addObject:@(1)];
    }
    
    for (int j = 1; j < numbers.count; j++) {
        for (int k = 0; k < j; k++) {
            
            if (numbers[j].integerValue > numbers[k].integerValue) {
                if (lengthOfSubsequence[j].integerValue <= lengthOfSubsequence[k].integerValue) {
                    lengthOfSubsequence[j] = @(lengthOfSubsequence[k].integerValue + 1);
                }
            }
        }
    }
    
    NSInteger maximum = 0;
    
    for (NSNumber *length in lengthOfSubsequence) {
        maximum = MAX(maximum, length.integerValue);
    }
    
    return maximum;
}

@end
