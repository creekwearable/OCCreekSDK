//
//  OxygenModel.m
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import "OxygenModel.h"

@implementation OxygenModel

+ (NSMutableArray<OxygenModel*>*)initWithArray:(NSArray *)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (NSDictionary *dataDict in arr) {
        OxygenModel *model = [[OxygenModel alloc]initWithDictionary:dataDict];
        [datasArray addObject:model];
    }
    return datasArray;
}

+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<OxygenModel*>*)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (OxygenModel *model in arr) {
        [datasArray addObject:[model toDictionary]];
    }
    return datasArray;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _average = [dictionary[@"average"] intValue];
        _creat_time = dictionary[@"creat_time"];
        NSMutableArray *datasArray = [NSMutableArray array];
        for (NSDictionary *dataDict in dictionary[@"datas"]) {
            OxygenDataModel *dataModel = [[OxygenDataModel alloc] initWithDictionary:dataDict];
            [datasArray addObject:dataModel];
        }
        _datas = [datasArray copy];
        _id = [dictionary[@"id"] intValue];
        _max = [dictionary[@"max"] intValue];
        _min = [dictionary[@"min"] intValue];
        _offset_last = [dictionary[@"offset_last"] intValue];
        _userID = [dictionary[@"userID"] intValue];
        _uploadStatus = [dictionary[@"uploadStatus"] intValue];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"average"] = @(self.average);
    dictionary[@"creat_time"] = self.creat_time;
    NSMutableArray *dataArray = [NSMutableArray array];
    for (OxygenDataModel *dataModel in self.datas) {
        [dataArray addObject:[dataModel toDictionary]];
    }
    dictionary[@"datas"] = [dataArray copy];
    dictionary[@"id"] = @(self.id);
    dictionary[@"max"] = @(self.max);
    dictionary[@"min"] = @(self.min);
    dictionary[@"offset_last"] = @(self.offset_last);
    dictionary[@"userID"] = @(self.userID);
    dictionary[@"uploadStatus"] = @(self.uploadStatus);
    return [dictionary copy];
}

@end

@implementation OxygenDataModel

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

