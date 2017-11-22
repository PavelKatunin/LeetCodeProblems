#import <Foundation/Foundation.h>

@interface ICKMeeting : NSObject

@property (nonatomic) NSNumber *startTime;
@property (nonatomic) NSNumber *endTime;

- (id)initWithStartTime:(NSNumber *)aStartTime endTime:(NSNumber *)aEndTime;

@end
