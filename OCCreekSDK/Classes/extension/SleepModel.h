//
//  SleepModel.h
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EnumValue.h"

NS_ASSUME_NONNULL_BEGIN

@class SleepDataModel;

@interface SleepModel : NSObject

@property (nonatomic, assign) int id;
@property (nonatomic, assign) int userID;

//wake up time  y-m-d
@property (nonatomic, copy) NSString *get_up_date;

//fall asleep time  y-m-d  h:m:s
@property (nonatomic, copy) NSString *fall_asleep_time;

//wake up time y-m-d  h:m:s
@property (nonatomic, copy) NSString *get_up_time;

//Total sleep duration
@property (nonatomic, assign) int total_sleep_time_mins;

//Sleep stage - total waking time, Unit: minute
@property (nonatomic, assign) int wake_mins;

//Sleep stage - total light sleep duration Unit: minute
@property (nonatomic, assign) int light_sleep_mins;

//Sleep stage - total deep sleep duration Unit: minute
@property (nonatomic, assign) int deep_sleep_mins;

//Sleep stage - total REM duration unit: minutes
@property (nonatomic, assign) int rem_mins;

//Waking times
@property (nonatomic, assign) int wake_count;

//light sleep times
@property (nonatomic, assign) int light_sleep_count;

//deep sleep times
@property (nonatomic, assign) int deep_sleep_count;

//Eye movements
@property (nonatomic, assign) int rem_count;
@property (nonatomic, assign) int sleep_score;
@property (nonatomic, assign) int uploadStatus;
@property (nonatomic, strong) NSArray<SleepDataModel *> *datas;

+ (NSMutableArray<SleepModel*>*)initWithArray:(NSArray *)arr;
+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<SleepModel*>*)arr;


- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

@interface SleepDataModel : NSObject

@property (nonatomic, assign) int duration;
@property (nonatomic, assign) HealthStorageSleepStageType stage;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
