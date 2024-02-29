//
//  ActivityModel.m
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import "ActivityModel.h"

@implementation ActivityModel


+ (NSMutableArray<ActivityModel*>*)initWithArray:(NSArray *)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (NSDictionary *dataDict in arr) {
        ActivityModel *model = [[ActivityModel alloc]initWithDictionary:dataDict];
        [datasArray addObject:model];
    }
    return datasArray;
}

+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<ActivityModel*>*)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (ActivityModel *model in arr) {
        [datasArray addObject:[model toDictionary]];
    }
    return datasArray;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _activity_item_count = [dictionary[@"activity_item_count"] intValue];
        _creat_time = dictionary[@"creat_time"];
        _id = [dictionary[@"id"] intValue];
        _total_activity_calories = [dictionary[@"total_activity_calories"] intValue];
        _total_distances = [dictionary[@"total_distances"] intValue];
        _total_exercise_min = [dictionary[@"total_exercise_min"] intValue];
        _total_rest_calories = [dictionary[@"total_rest_calories"] intValue];
        _total_stand_hour = [dictionary[@"total_stand_hour"] intValue];
        _total_step = [dictionary[@"total_step"] intValue];
        _userID = [dictionary[@"userID"] intValue];
        _floors_climbed_support = [dictionary[@"floors_climbed_support"] intValue];
        _total_floors_climbed = [dictionary[@"total_floors_climbed"] intValue];
        _uploadStatus = [dictionary[@"uploadStatus"] intValue];
        
        NSMutableArray *datasArray = [NSMutableArray array];
        for (NSDictionary *dataDict in dictionary[@"datas"]) {
            ActivityDataModel *dataModel = [[ActivityDataModel alloc] initWithDictionary:dataDict];
            [datasArray addObject:dataModel];
        }
        _datas = [datasArray copy];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"activity_item_count"] = @(self.activity_item_count);
    dictionary[@"creat_time"] = self.creat_time;
    dictionary[@"id"] = @(self.id);
    dictionary[@"total_activity_calories"] = @(self.total_activity_calories);
    dictionary[@"total_distances"] = @(self.total_distances);
    dictionary[@"total_exercise_min"] = @(self.total_exercise_min);
    dictionary[@"total_rest_calories"] = @(self.total_rest_calories);
    dictionary[@"total_stand_hour"] = @(self.total_stand_hour);
    dictionary[@"total_step"] = @(self.total_step);
    dictionary[@"userID"] = @(self.userID);
    dictionary[@"floors_climbed_support"] = @(self.floors_climbed_support);
    dictionary[@"total_floors_climbed"] = @(self.total_floors_climbed);
    dictionary[@"uploadStatus"] = @(self.uploadStatus);
    
    NSMutableArray *dataArray = [NSMutableArray array];
    for (ActivityDataModel *dataModel in self.datas) {
        [dataArray addObject:[dataModel toDictionary]];
    }
    dictionary[@"datas"] = [dataArray copy];
    
    return [dictionary copy];
}

@end



@implementation ActivityDataModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _activity_calories = [dictionary[@"activity_calories"] intValue];
        _distance = [dictionary[@"distance"] intValue];
        _exercise_min = [dictionary[@"exercise_min"] intValue];
        _rest_calories = [dictionary[@"rest_calories"] intValue];
        _stand_time = [dictionary[@"stand_time"] intValue];
        _step_count = [dictionary[@"step_count"] intValue];
        _wear_time = [dictionary[@"wear_time"] intValue];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"activity_calories"] = @(self.activity_calories);
    dictionary[@"distance"] = @(self.distance);
    dictionary[@"exercise_min"] = @(self.exercise_min);
    dictionary[@"rest_calories"] = @(self.rest_calories);
    dictionary[@"stand_time"] = @(self.stand_time);
    dictionary[@"step_count"] = @(self.step_count);
    dictionary[@"wear_time"] = @(self.wear_time);
    return [dictionary copy];
}

@end
