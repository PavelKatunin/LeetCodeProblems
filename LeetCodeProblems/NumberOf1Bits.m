#import "NumberOf1Bits.h"

@implementation NumberOf1Bits

- (NSUInteger)numberOfOneBits:(int64_t)integer {
    NSInteger numberOfOneBits = 0;
    
    NSInteger numberOfBits = 64;
    NSInteger lastBitOneNumber = 1;
    int64_t copyValueWithOffset = integer;
    
    for (NSInteger count = 0; count < numberOfBits; count++) {
        
        if (lastBitOneNumber & copyValueWithOffset) {
            numberOfOneBits++;
        }
        
        copyValueWithOffset >>= 1;
    }
    
    return numberOfOneBits;
}

@end
