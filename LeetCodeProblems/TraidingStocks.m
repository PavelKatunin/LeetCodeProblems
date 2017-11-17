#import "TraidingStocks.h"

@implementation TraidingStocks

- (double)maxProfitFromStocks:(NSArray<NSNumber *> *)stocks {
    NSAssert(stocks.count > 1, @"Cannot calculate profit from 1 stock price");
    
    double currentStockPrice = stocks[0].doubleValue;
    double currentMaxProfit = stocks[1].doubleValue - stocks[0].doubleValue;
    double minStockPrice = stocks[0].doubleValue;
    
    for (int currentIndex = 1; currentIndex < stocks.count; currentIndex++) {
        currentStockPrice = stocks[currentIndex].doubleValue;
        currentMaxProfit = MAX(currentStockPrice - minStockPrice, currentMaxProfit);
        minStockPrice = MIN(minStockPrice, currentStockPrice);
    }
    
    return currentMaxProfit;
}

@end
