//
//  HeartRateModel.m
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import "HeartRateModel.h"

@implementation HeartRateModel

+ (NSMutableArray<HeartRateModel*>*)initWithArray:(NSArray *)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (NSDictionary *dataDict in arr) {
        HeartRateModel *model = [[HeartRateModel alloc]initWithDictionary:dataDict];
        [datasArray addObject:model];
    }
    return datasArray;
}

+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<HeartRateModel*>*)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (HeartRateModel *model in arr) {
        [datasArray addObject:[model toDictionary]];
    }
    return datasArray;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _average = [dictionary[@"average"] intValue];
        _creat_time = dictionary[@"creat_time"];
        _id = [dictionary[@"id"] intValue];
        _max = [dictionary[@"max"] intValue];
        _min = [dictionary[@"min"] intValue];
        _offset_last = [dictionary[@"offset_last"] intValue];
        _raisedHr = [dictionary[@"raisedHr"] intValue];
        _silent_hr = [dictionary[@"silent_hr"] intValue];
        _userID = [dictionary[@"userID"] intValue];
        _uploadStatus = [dictionary[@"uploadStatus"] intValue];
        
        NSMutableArray *datasArray = [NSMutableArray array];
        for (NSDictionary *dataDict in dictionary[@"datas"]) {
            HeartRateDataModel *dataModel = [[HeartRateDataModel alloc] initWithDictionary:dataDict];
            [datasArray addObject:dataModel];
        }
        _datas = [datasArray copy];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"average"] = @(self.average);
    dictionary[@"creat_time"] = self.creat_time;
    dictionary[@"id"] = @(self.id);
    dictionary[@"max"] = @(self.max);
    dictionary[@"min"] = @(self.min);
    dictionary[@"offset_last"] = @(self.offset_last);
    dictionary[@"raisedHr"] = @(self.raisedHr);
    dictionary[@"silent_hr"] = @(self.silent_hr);
    dictionary[@"userID"] = @(self.userID);
    dictionary[@"uploadStatus"] = @(self.uploadStatus);
    
    NSMutableArray *dataArray = [NSMutableArray array];
    for (HeartRateDataModel *dataModel in self.datas) {
        [dataArray addObject:[dataModel toDictionary]];
    }
    dictionary[@"datas"] = [dataArray copy];
    
    return [dictionary copy];
}

@end


@implementation HeartRateDataModel

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
