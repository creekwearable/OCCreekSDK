//
//  UpgradeModel.m
//  OCCreekSDK
//
//  Created by bean on 2024/5/13.
//  Copyright © 2024 bean. All rights reserved.
//

#import "UpgradeModel.h"

@implementation UpgradeModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _totalResource = dictionary[@"totalResource"];
        _step = dictionary[@"step"];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"totalResource"] = self.totalResource;
    dictionary[@"step"] = self.step;
    return [dictionary copy];
}

@end
