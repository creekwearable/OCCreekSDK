//
//  NoticeUpdateModel.m
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import "NoticeUpdateModel.h"

@implementation NoticeUpdateModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _eventId = [dictionary[@"eventId"] intValue];
        _eventKey = [dictionary[@"eventKey"] intValue];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"eventId"] = @(self.eventId);
    dictionary[@"eventKey"] = @(self.eventKey);
    return [dictionary copy];
}

@end
