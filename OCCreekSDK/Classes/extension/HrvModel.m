//
//  HrvModel.m
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import "HrvModel.h"

@implementation HrvModel

+ (NSMutableArray<HrvModel*>*)initWithArray:(NSArray *)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (NSDictionary *dataDict in arr) {
        HrvModel *model = [[HrvModel alloc]initWithDictionary:dataDict];
        [datasArray addObject:model];
    }
    return datasArray;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _average = dictionary[@"average"];
        _creat_time = dictionary[@"creat_time"];
        
        NSMutableArray *datasArray = [NSMutableArray array];
        for (NSDictionary *dataDict in dictionary[@"datas"]) {
            HrvDataModel *dataModel = [[HrvDataModel alloc] initWithDictionary:dataDict];
            [datasArray addObject:dataModel];
        }
        _datas = [datasArray copy];
        
        _id = dictionary[@"id"];
        _max = dictionary[@"max"];
        _min = dictionary[@"min"];
        _sleepMax = dictionary[@"sleepMax"];
        _sleepMin = dictionary[@"sleepMin"];
        _offset_last = dictionary[@"offset_last"];
        _userID = dictionary[@"userID"];
        _uploadStatus = dictionary[@"uploadStatus"];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"average"] = self.average;
    dictionary[@"creat_time"] = self.creat_time;
    
    NSMutableArray *dataArray = [NSMutableArray array];
    for (HrvDataModel *dataModel in self.datas) {
        [dataArray addObject:[dataModel toDictionary]];
    }
    dictionary[@"datas"] = [dataArray copy];
    
    dictionary[@"id"] = self.id;
    dictionary[@"max"] = self.max;
    dictionary[@"min"] = self.min;
    dictionary[@"sleepMax"] = self.sleepMax;
    dictionary[@"sleepMin"] = self.sleepMin;
    dictionary[@"offset_last"] = self.offset_last;
    dictionary[@"userID"] = self.userID;
    dictionary[@"uploadStatus"] = self.uploadStatus;
    
    return [dictionary copy];
}


@end

@implementation HrvDataModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _offset = dictionary[@"offset"];
        _value = dictionary[@"value"];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"offset"] = self.offset;
    dictionary[@"value"] = self.value;
    return [dictionary copy];
}

@end
