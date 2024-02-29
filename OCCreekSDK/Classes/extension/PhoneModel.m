//
//  PhoneModel.m
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import "PhoneModel.h"

@implementation PhoneModel

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"contactName"] = self.contactName;
    dictionary[@"phoneNumber"] = self.phoneNumber;
    return [dictionary copy];
}

@end
