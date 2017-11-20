#import "ProductOfOtherNumbers.h"

@implementation ProductOfOtherNumbers

// O(n)

- (NSArray<NSNumber *> *)productOfOthers:(NSArray<NSNumber *> *)numbers {
    NSAssert(numbers.count > 1, @"Cannot calculate products of nothing");
    
    NSLog(@"numbers count %lu", (unsigned long)numbers.count);
    NSLog(@"numbers %@", numbers);
    
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    
    NSMutableArray<NSNumber *> *reversedProducts = [[NSMutableArray alloc] init];
    
    long reverseProduct = 1;
    
    [reversedProducts addObject:@(reverseProduct)];
    
    for (NSInteger currentIndex = numbers.count - 1; currentIndex > 0; currentIndex--) {
        reverseProduct = reverseProduct * numbers[currentIndex].integerValue;
        [reversedProducts addObject:@(reverseProduct)];
    }
    
    reversedProducts = [[[reversedProducts reverseObjectEnumerator] allObjects] mutableCopy];
    
    NSLog(@"reversedProducts count %lu", (unsigned long)reversedProducts.count);
    NSLog(@"reversedProducts %@", reversedProducts);
    
    long product = 1;
    
    NSMutableArray<NSNumber *> *products = [[NSMutableArray alloc] init];
    
    [products addObject:@(product)];
    
    for (NSInteger currentIndex = 0; currentIndex < numbers.count - 1; currentIndex++) {
        product = product * numbers[currentIndex].integerValue;
        [products addObject:@(product)];
    }
    
    NSLog(@"products count %lu", (unsigned long)products.count);
    NSLog(@"reversedProducts %@", products);
    
    for (NSInteger currentIndex = 0; currentIndex < numbers.count; currentIndex++) {
        [resultArray addObject:@(reversedProducts[currentIndex].integerValue *
                                 products[currentIndex].integerValue)];
    }
    
    return resultArray;
}

@end
