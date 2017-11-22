#import "Queue.h"

@interface Queue ()

@property NSMutableArray *array;

@end

@implementation Queue

#pragma mark - Initialization

- (instancetype)init {
    self = [super init];
    if (self) {
        self.array = [[NSMutableArray alloc] init];
    }
    return self;
}

#pragma mark - Public methods

- (void)enqueue:(id)object {
    [self.array addObject:object];
}

- (id)dequeue {
    id object = nil;
    if (self.array.count > 0) {
       object = [self.array firstObject];
        [self.array removeObjectAtIndex:0];
    }
    return object;
}

@end
