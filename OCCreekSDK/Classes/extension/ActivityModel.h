//
//  ActivityModel.h
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ActivityDataModel;

@interface ActivityModel : NSObject

//Number of activities
@property (nonatomic, assign) int activity_item_count;
@property (nonatomic, copy) NSString *creat_time;
@property (nonatomic, assign) int id;

//total active calories
@property (nonatomic, assign) int total_activity_calories;

// Total distance  /m
@property (nonatomic, assign) int total_distances;

//Exercise duration in minutes
@property (nonatomic, assign) int total_exercise_min;

//Total Resting Calories
@property (nonatomic, assign) int total_rest_calories;

//hours of standing per day
@property (nonatomic, assign) int total_stand_hour;

//total steps
@property (nonatomic, assign) int total_step;
@property (nonatomic, assign) int userID;

//Whether to support the number of floors
@property (nonatomic, assign) int floors_climbed_support;

//Total number of floors climbed
@property (nonatomic, assign) int total_floors_climbed;
@property (nonatomic, assign) int uploadStatus;
@property (nonatomic, strong) NSArray<ActivityDataModel *> *datas;


+ (NSMutableArray<ActivityModel*>*)initWithArray:(NSArray *)arr;
+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<ActivityModel*>*)arr;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;



@end


@interface ActivityDataModel : NSObject

//Activity Calories
@property (nonatomic, assign) int activity_calories;

//distance  /m
@property (nonatomic, assign) int distance;

//Exercise duration /m
@property (nonatomic, assign) int exercise_min;


@property (nonatomic, assign) int rest_calories;

//  stand    /h
@property (nonatomic, assign) int stand_time;

//Step count
@property (nonatomic, assign) int step_count;
@property (nonatomic, assign) int wear_time;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
