//
//  EventReportModel.m
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import "EventReportModel.h"

@implementation EventReportModel
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self && dictionary) {
        self.eventId = dictionary[@"eventId"];
        self.subId = dictionary[@"subId"];
        self.time = dictionary[@"time"];
        self.message = dictionary[@"message"];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"eventId"] = self.eventId;
    dictionary[@"subId"] = self.subId;
    dictionary[@"time"] = self.time;
    dictionary[@"message"] = self.message;
    return [dictionary copy];
}

@end
