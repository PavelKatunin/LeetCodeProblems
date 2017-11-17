#import <XCTest/XCTest.h>
#import "TraidingStocks.h"

@interface TraidingStocksTests : XCTestCase

@end

@implementation TraidingStocksTests

- (void)testGoingDownStocks {
    NSArray *stocks = @[ @(700), @(600), @(500), @(499), @(300), @(200), @(199), @(198), @(197), @(100)];
    double expectedProfit = -1;
    
    XCTAssertEqual([[[TraidingStocks alloc] init] maxProfitFromStocks:stocks],
                   expectedProfit);
}

- (void)testGoingUpStocks {
    NSArray *stocks = @[ @(1), @(4), @(100), @(322), @(1000), @(567)];
    double expectedProfit = 999;
    
    XCTAssertEqual([[[TraidingStocks alloc] init] maxProfitFromStocks:stocks],
                   expectedProfit);
}

- (void)testMixedStocks {
    NSArray *stocks = @[ @(100), @(4), @(1300), @(1560), @(2), @(567), @(1555)];
    double expectedProfit = 1556;
    
    XCTAssertEqual([[[TraidingStocks alloc] init] maxProfitFromStocks:stocks],
                   expectedProfit);
}

- (void)test1StockInput {
    NSArray *stocks = @[ @(10) ];
    XCTAssertThrows([[[TraidingStocks alloc] init] maxProfitFromStocks:stocks]);
}

- (void)test2StockInputs {
    NSArray *stocks = @[ @(10), @(100)];
    double expectedProfit = 90;
    
    XCTAssertEqual([[[TraidingStocks alloc] init] maxProfitFromStocks:stocks],
                   expectedProfit);
}

@end
