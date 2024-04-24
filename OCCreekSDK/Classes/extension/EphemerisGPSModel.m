//
//  EphemerisGPSModel.m
//  OCCreekSDK
//
//  Created by bean on 2024/4/24.
//  Copyright © 2024 bean. All rights reserved.
//

#import "EphemerisGPSModel.h"

@implementation EphemerisGPSModel

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
   
    dictionary[@"isVaild"] = @(self.isVaild);
    dictionary[@"latitude"] = @(self.latitude);
    dictionary[@"longitude"] = @(self.longitude);
    dictionary[@"altitude"] = @(self.altitude);
    return [dictionary copy];
}

@end
