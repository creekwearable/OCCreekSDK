//
//  StressModel.m
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import "StressModel.h"

@implementation StressModel

+ (NSMutableArray<StressModel*>*)initWithArray:(NSArray *)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (NSDictionary *dataDict in arr) {
        StressModel* model = [[StressModel alloc]initWithDictionary:dataDict];
        [datasArray addObject:model];
    }
    return datasArray;
}

+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<StressModel*>*)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (StressModel *model in arr) {
        [datasArray addObject:[model toDictionary]];
    }
    return datasArray;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _average = [dictionary[@"average"] intValue];
        _createTime = dictionary[@"creat_time"];
        NSMutableArray *datasArray = [NSMutableArray array];
        for (NSDictionary *dataDict in dictionary[@"datas"]) {
            StressDataModel *dataModel = [[StressDataModel alloc] initWithDictionary:dataDict];
            [datasArray addObject:dataModel];
        }
        _datas = [datasArray copy];
        _deviceId = dictionary[@"deviceId"];
        _higher = [dictionary[@"higher"] intValue];
        _identifier = [dictionary[@"id"] intValue];
        _low = [dictionary[@"low"] intValue];
        _max = [dictionary[@"max"] intValue];
        _min = [dictionary[@"min"] intValue];
        _offsetLast = [dictionary[@"offset_last"] intValue];
        _userID = [dictionary[@"userID"] intValue];
        _usual = [dictionary[@"usual"] intValue];
        _veryHigh = [dictionary[@"veryHigh"] intValue];
        _uploadStatus = [dictionary[@"uploadStatus"] intValue];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"average"] = @(self.average);
    dictionary[@"creat_time"] = self.createTime;
    NSMutableArray *dataArray = [NSMutableArray array];
    for (StressDataModel *dataModel in self.datas) {
        [dataArray addObject:[dataModel toDictionary]];
    }
    dictionary[@"datas"] = [dataArray copy];
    dictionary[@"deviceId"] = self.deviceId;
    dictionary[@"higher"] = @(self.higher);
    dictionary[@"id"] = @(self.identifier);
    dictionary[@"low"] = @(self.low);
    dictionary[@"max"] = @(self.max);
    dictionary[@"min"] = @(self.min);
    dictionary[@"offset_last"] = @(self.offsetLast);
    dictionary[@"userID"] = @(self.userID);
    dictionary[@"usual"] = @(self.usual);
    dictionary[@"veryHigh"] = @(self.veryHigh);
    dictionary[@"uploadStatus"] = @(self.uploadStatus);
    return [dictionary copy];
}

@end

@implementation StressDataModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _offset = [dictionary[@"offset"] intValue];
        _value = [dictionary[@"value"] intValue];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"offset"] = @(self.offset);
    dictionary[@"value"] = @(self.value);
    return [dictionary copy];
}

@end
