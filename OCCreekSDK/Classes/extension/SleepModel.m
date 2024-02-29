//
//  SleepModel.m
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import "SleepModel.h"

@implementation SleepModel

+ (NSMutableArray<SleepModel*>*)initWithArray:(NSArray *)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (NSDictionary *dataDict in arr) {
        SleepModel *model = [[SleepModel alloc]initWithDictionary:dataDict];
        [datasArray addObject:model];
    }
    return datasArray;
}

+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<SleepModel*>*)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (SleepModel *model in arr) {
        [datasArray addObject:[model toDictionary]];
    }
    return datasArray;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _id = [dictionary[@"id"] intValue];
        _userID = [dictionary[@"userID"] intValue];
        _get_up_date = dictionary[@"get_up_date"];
        _fall_asleep_time = dictionary[@"fall_asleep_time"];
        _get_up_time = dictionary[@"get_up_time"];
        _total_sleep_time_mins = [dictionary[@"total_sleep_time_mins"] intValue];
        _wake_mins = [dictionary[@"wake_mins"] intValue];
        _light_sleep_mins = [dictionary[@"light_sleep_mins"] intValue];
        _deep_sleep_mins = [dictionary[@"deep_sleep_mins"] intValue];
        _rem_mins = [dictionary[@"rem_mins"] intValue];
        _wake_count = [dictionary[@"wake_count"] intValue];
        _light_sleep_count = [dictionary[@"light_sleep_count"] intValue];
        _deep_sleep_count = [dictionary[@"deep_sleep_count"] intValue];
        _rem_count = [dictionary[@"rem_count"] intValue];
        _sleep_score = [dictionary[@"sleep_score"] intValue];
        _uploadStatus = [dictionary[@"uploadStatus"] intValue];
        
        NSMutableArray *dataModels = [NSMutableArray array];
        for (NSDictionary *dataDict in dictionary[@"datas"]) {
            SleepDataModel *dataModel = [[SleepDataModel alloc] initWithDictionary:dataDict];
            [dataModels addObject:dataModel];
        }
        _datas = [dataModels copy];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"id"] = @(self.id);
    dictionary[@"userID"] = @(self.userID);
    dictionary[@"get_up_date"] = self.get_up_date;
    dictionary[@"fall_asleep_time"] = self.fall_asleep_time;
    dictionary[@"get_up_time"] = self.get_up_time;
    dictionary[@"total_sleep_time_mins"] = @(self.total_sleep_time_mins);
    dictionary[@"wake_mins"] = @(self.wake_mins);
    dictionary[@"light_sleep_mins"] = @(self.light_sleep_mins);
    dictionary[@"deep_sleep_mins"] = @(self.deep_sleep_mins);
    dictionary[@"rem_mins"] = @(self.rem_mins);
    dictionary[@"wake_count"] = @(self.wake_count);
    dictionary[@"light_sleep_count"] = @(self.light_sleep_count);
    dictionary[@"deep_sleep_count"] = @(self.deep_sleep_count);
    dictionary[@"rem_count"] = @(self.rem_count);
    dictionary[@"sleep_score"] = @(self.sleep_score);
    dictionary[@"uploadStatus"] = @(self.uploadStatus);
    
    NSMutableArray *dataArray = [NSMutableArray array];
    for (SleepDataModel *dataModel in self.datas) {
        [dataArray addObject:[dataModel toDictionary]];
    }
    dictionary[@"datas"] = [dataArray copy];
    
    return [dictionary copy];
}

@end

@implementation SleepDataModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _duration = [dictionary[@"duration"] intValue];
        _stage = [dictionary[@"stage"] intValue];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"duration"] = @(self.duration);
    dictionary[@"stage"] = @(self.stage);
    return [dictionary copy];
}

@end
