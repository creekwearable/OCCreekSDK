//
//  SportModel.m
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import "SportModel.h"

@implementation SportModel

+ (NSMutableArray<SportModel*>*)initWithArray:(NSArray *)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (NSDictionary *dataDict in arr) {
        SportModel* model = [[SportModel alloc]initWithDictionary:dataDict];
        [datasArray addObject:model];
    }
    return datasArray;
}

+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<SportModel*>*)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (SportModel *model in arr) {
        [datasArray addObject:[model toDictionary]];
    }
    return datasArray;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self && dictionary) {
        self.aerobicExerciseTime = [dictionary[@"aerobicExerciseTime"] intValue];
        self.anaerobicExerciseTime = [dictionary[@"anaerobicExerciseTime"] intValue];
        self.avgHrValue = [dictionary[@"avgHrValue"] intValue];
        self.avgKmPace = [dictionary[@"avgKmPace"] intValue];
        self.fastKmPace = [dictionary[@"fastKmPace"] intValue];
        self.avgSpeed = [dictionary[@"avgSpeed"] intValue];
        self.fastSpeed = [dictionary[@"fastSpeed"] intValue];
        self.avgStepFrequency = [dictionary[@"avgStepFrequency"] intValue];
        self.avgStepStride = [dictionary[@"avgStepStride"] intValue];
        self.creatTime = dictionary[@"creatTime"];
        self.durations = [dictionary[@"durations"] intValue];
        self.startTime = dictionary[@"startTime"];
        self.endTime = dictionary[@"endTime"];
        self.extremeExerciseTime = [dictionary[@"extremeExerciseTime"] intValue];
        self.fatBurningTime = [dictionary[@"fatBurningTime"] intValue];
        self.goalData = [dictionary[@"goalData"] intValue];
        self.goalType = [dictionary[@"goalType"] integerValue];
        self.grade = [dictionary[@"grade"] intValue];
//        self.hrItemCount = [dictionary[@"hrItemCount"] intValue];
        self.hrValueItem = dictionary[@"hrValueItem"];
        self.id = [dictionary[@"id"] intValue];
        self.isConnectApp = [dictionary[@"isConnectApp"] intValue];
        self.kmPaceItem = dictionary[@"kmPaceItem"];
//        self.kmSpeedCount = [dictionary[@"kmSpeedCount"] intValue];
        self.kmSpeedItem = dictionary[@"kmSpeedItem"];
        self.maxHrValue = [dictionary[@"maxHrValue"] intValue];
        self.maxStepFrequency = [dictionary[@"maxStepFrequency"] intValue];
        self.maxStepStride = [dictionary[@"maxStepStride"] intValue];
        self.minHrValue = [dictionary[@"minHrValue"] intValue];
        self.miPaceItem = dictionary[@"miPaceItem"];
        self.miSpeedItem = dictionary[@"miSpeedItem"];
        self.elevationItem = dictionary[@"elevationItem"];
//        self.paceCount = [dictionary[@"paceCount"] intValue];
        self.recoveryTime = [dictionary[@"recoveryTime"] intValue];
        self.sportStartType = [dictionary[@"sportStartType"] intValue];
        self.sportType = [dictionary[@"sportType"] intValue];
//        self.stepFrequencyCount = [dictionary[@"stepFrequencyCount"] intValue];
        self.stepFrequencyItem = dictionary[@"stepFrequencyItem"];
//        self.stepStrideCount = [dictionary[@"stepStrideCount"] intValue];
        self.stepStrideItem = dictionary[@"stepStrideItem"];
        self.totalCalories = [dictionary[@"totalCalories"] intValue];
        self.totalDistance = [dictionary[@"totalDistance"] intValue];
        self.totalStep = [dictionary[@"totalStep"] intValue];
        NSMutableArray *datasArray2 = [NSMutableArray array];
        for (NSDictionary *dataDict in dictionary[@"trailData"]) {
            SportDataModel *dataModel = [[SportDataModel alloc] initWithDictionary:dataDict];
            [datasArray2 addObject:dataModel];
        }
        self.trailData = datasArray2;
        NSMutableArray *datasArray = [NSMutableArray array];
        for (NSDictionary *dataDict in dictionary[@"speedPaceItem"]) {
            SpeedPaceModel *dataModel = [[SpeedPaceModel alloc] initWithDictionary:dataDict];
            [datasArray addObject:dataModel];
        }
        self.speedPaceItem = datasArray;
        self.trainingEffect = [dictionary[@"trainingEffect"] intValue];
        self.userID = [dictionary[@"userID"] intValue];
        self.vozmax = [dictionary[@"vozmax"] intValue];
        self.warmUpTime = [dictionary[@"warmUpTime"] intValue];
        self.uploadStatus = [dictionary[@"uploadStatus"] intValue];
        self.avgPower = [dictionary[@"avgPower"] intValue];
        self.swimDistance = [dictionary[@"swimDistance"] intValue];
        self.maxElevation = [dictionary[@"maxElevation"] intValue];
        self.minElevation = [dictionary[@"minElevation"] intValue];
        self.avgElevation = [dictionary[@"avgElevation"] intValue];
        self.climbHeight = [dictionary[@"climbHeight"] intValue];
        self.met = [dictionary[@"met"] intValue];
        self.metSupport = [dictionary[@"metSupport"] intValue];
        self.elevationSupport = [dictionary[@"elevationSupport"] intValue];
        self.avgPowerSupport = [dictionary[@"avgPowerSupport"] intValue];
        self.travelingTime = [dictionary[@"travelingTime"] intValue];
        self.travelingTimeSupport = [dictionary[@"travelingTimeSupport"] intValue];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"aerobicExerciseTime"] = @(self.aerobicExerciseTime);
    dictionary[@"anaerobicExerciseTime"] = @(self.anaerobicExerciseTime);
    dictionary[@"avgHrValue"] = @(self.avgHrValue);
    dictionary[@"avgKmPace"] = @(self.avgKmPace);
    dictionary[@"fastKmPace"] = @(self.fastKmPace);
    dictionary[@"avgSpeed"] = @(self.avgSpeed);
    dictionary[@"fastSpeed"] = @(self.fastSpeed);
    dictionary[@"avgStepFrequency"] = @(self.avgStepFrequency);
    dictionary[@"avgStepStride"] = @(self.avgStepStride);
    dictionary[@"creatTime"] = self.creatTime;
    dictionary[@"durations"] = @(self.durations);
    dictionary[@"startTime"] = self.startTime;
    dictionary[@"endTime"] = self.endTime;
    dictionary[@"extremeExerciseTime"] = @(self.extremeExerciseTime);
    dictionary[@"fatBurningTime"] = @(self.fatBurningTime);
    dictionary[@"goalData"] = @(self.goalData);
    dictionary[@"goalType"] = @(self.goalType);
    dictionary[@"grade"] = @(self.grade);
//    dictionary[@"hrItemCount"] = @(self.hrItemCount);
    dictionary[@"hrValueItem"] = self.hrValueItem;
    dictionary[@"id"] = @(self.id);
    dictionary[@"isConnectApp"] = @(self.isConnectApp);
    dictionary[@"kmPaceItem"] = self.kmPaceItem;
//    dictionary[@"kmSpeedCount"] = @(self.kmSpeedCount);
    dictionary[@"kmSpeedItem"] = self.kmSpeedItem;
    dictionary[@"maxHrValue"] = @(self.maxHrValue);
    dictionary[@"maxStepFrequency"] = @(self.maxStepFrequency);
    dictionary[@"maxStepStride"] = @(self.maxStepStride);
    dictionary[@"minHrValue"] = @(self.minHrValue);
    dictionary[@"miPaceItem"] = self.miPaceItem;
    dictionary[@"miSpeedItem"] = self.miSpeedItem;
    dictionary[@"elevationItem"] = self.elevationItem;
//    dictionary[@"paceCount"] = @(self.paceCount);
    dictionary[@"recoveryTime"] = @(self.recoveryTime);
    dictionary[@"sportStartType"] = @(self.sportStartType);
    dictionary[@"sportType"] = @(self.sportType);
//    dictionary[@"stepFrequencyCount"] = @(self.stepFrequencyCount);
    dictionary[@"stepFrequencyItem"] = self.stepFrequencyItem;
//    dictionary[@"stepStrideCount"] = @(self.stepStrideCount);
    dictionary[@"stepStrideItem"] = self.stepStrideItem;
    dictionary[@"totalCalories"] = @(self.totalCalories);
    dictionary[@"totalDistance"] = @(self.totalDistance);
    dictionary[@"totalStep"] = @(self.totalStep);
    
    NSMutableArray *dataArray1 = [NSMutableArray array];
    for (SportDataModel *dataModel in self.trailData) {
        [dataArray1 addObject:[dataModel toDictionary]];
    }
    dictionary[@"trailData"] = dataArray1;
    
    NSMutableArray *dataArray2 = [NSMutableArray array];
    for (SpeedPaceModel *dataModel in self.speedPaceItem) {
        [dataArray2 addObject:[dataModel toDictionary]];
    }
    dictionary[@"speedPaceItem"] = dataArray2;
    dictionary[@"trainingEffect"] = @(self.trainingEffect);
    dictionary[@"userID"] = @(self.userID);
    dictionary[@"vozmax"] = @(self.vozmax);
    dictionary[@"warmUpTime"] = @(self.warmUpTime);
    dictionary[@"uploadStatus"] = @(self.uploadStatus);
    dictionary[@"avgPower"] = @(self.avgPower);
    dictionary[@"swimDistance"] = @(self.swimDistance);
    dictionary[@"maxElevation"] = @(self.maxElevation);
    dictionary[@"minElevation"] = @(self.minElevation);
    dictionary[@"avgElevation"] = @(self.avgElevation);
    dictionary[@"climbHeight"] = @(self.climbHeight);
    dictionary[@"met"] = @(self.met);
    dictionary[@"metSupport"] = @(self.metSupport);
    dictionary[@"elevationSupport"] = @(self.elevationSupport);
    dictionary[@"avgPowerSupport"] = @(self.avgPowerSupport);
    dictionary[@"travelingTime"] = @(self.travelingTime);
    dictionary[@"travelingTimeSupport"] = @(self.travelingTimeSupport);
    return [dictionary copy];
}

@end


@implementation SportDataModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _latitude = [dictionary[@"latitude"] intValue];
        _longitude = [dictionary[@"longitude"] intValue];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"latitude"] = @(self.latitude);
    dictionary[@"longitude"] = @(self.longitude);
    return [dictionary copy];
}
@end

@implementation SpeedPaceModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _speed = [dictionary[@"speed"] intValue];
        _pace = [dictionary[@"pace"] intValue];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"speed"] = @(self.speed);
    dictionary[@"pace"] = @(self.pace);
    return [dictionary copy];
}
@end
