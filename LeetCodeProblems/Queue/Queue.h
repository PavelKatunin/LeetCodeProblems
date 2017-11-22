#import <Foundation/Foundation.h>

@interface Queue : NSObject

- (void)enqueue:(id)object;
- (id)dequeue;

@end
