//
//  EphemerisModel.m
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import "EphemerisModel.h"

@implementation EphemerisModel

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"socName"] = self.socName;
    dictionary[@"startUtcTime"] = @(self.startUtcTime);
    dictionary[@"endUtcTime"] = @(self.endUtcTime);
    dictionary[@"isVaild"] = @(self.isVaild);
    dictionary[@"latitude"] = @(self.latitude);
    dictionary[@"latitudeDire"] = self.latitudeDire;
    dictionary[@"longitude"] = @(self.longitude);
    dictionary[@"longitudeDire"] = self.longitudeDire;
    dictionary[@"altitude"] = @(self.altitude);
    dictionary[@"fileSize"] = @(self.fileSize);
    dictionary[@"filePath"] = self.filePath;
    return [dictionary copy];
}

@end
