#import "ICKMeeting.h"

@implementation ICKMeeting

- (id)initWithStartTime:(NSNumber *)aStartTime endTime:(NSNumber *)aEndTime {
    if (self = [super init]) {
        // Number of 30 min blocks past 9:00 am
        self.startTime = @(aStartTime.integerValue);
        self.endTime   = @(aEndTime.integerValue);
    }
    return self;
}

@end
