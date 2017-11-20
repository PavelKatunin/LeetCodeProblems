#import <XCTest/XCTest.h>
#import "Queue.h"

@interface QueueTests : XCTestCase

@end

@implementation QueueTests

- (void)testNumbers {
    Queue *queue = [[Queue alloc] init];
    
    [queue enqueue:@(1)];
    [queue enqueue:@(2)];
    [queue enqueue:@(3)];
    [queue enqueue:@(4)];
    
    XCTAssertEqual(queue.dequeue, @(1));
    XCTAssertEqual(queue.dequeue, @(2));
    XCTAssertEqual(queue.dequeue, @(3));
    XCTAssertEqual(queue.dequeue, @(4));
    
    [queue enqueue:@(5)];
    [queue enqueue:@(6)];
    
    XCTAssertEqual(queue.dequeue, @(5));
    
    [queue enqueue:@(7)];
}

- (void)testStrings {
    Queue *queue = [[Queue alloc] init];
    
    [queue enqueue:@"a"];
    [queue enqueue:@"b"];
    [queue enqueue:@"c"];
    [queue enqueue:@"d"];
    
    XCTAssertEqual(queue.dequeue, @"a");
    XCTAssertEqual(queue.dequeue, @"b");
    XCTAssertEqual(queue.dequeue, @"c");
    XCTAssertEqual(queue.dequeue, @"d");
    
    [queue enqueue:@"e"];
    [queue enqueue:@"f"];
    
    XCTAssertEqual(queue.dequeue, @"e");
    
    [queue enqueue:@"g"];
}

- (void)testSameValues {
    Queue *queue = [[Queue alloc] init];
    
    [queue enqueue:@"a"];
    [queue enqueue:@"a"];
    [queue enqueue:@"a"];
    [queue enqueue:@"a"];
    
    XCTAssertEqual(queue.dequeue, @"a");
    XCTAssertEqual(queue.dequeue, @"a");
    XCTAssertEqual(queue.dequeue, @"a");
    XCTAssertEqual(queue.dequeue, @"a");
}

- (void)testDequeueEmpty {
    Queue *queue = [[Queue alloc] init];
    
    [queue enqueue:@"a"];
    
    XCTAssertEqual(queue.dequeue, @"a");
    XCTAssertNil(queue.dequeue);
}

@end
