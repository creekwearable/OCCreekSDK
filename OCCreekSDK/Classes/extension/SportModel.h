//
//  SportModel.h
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EnumValue.h"

NS_ASSUME_NONNULL_BEGIN

@class SportDataModel;
@class SpeedPaceModel;

@interface SportModel : NSObject
@property (nonatomic, assign) int aerobicExerciseTime; //Cumulative duration of aerobic exercise  unit/s
@property (nonatomic, assign) int anaerobicExerciseTime; //Cumulative duration of anaerobic exercise  unit/s
@property (nonatomic, assign) int avgHrValue; //average heart rate

//Average Kilometer Pace
/*
 //For example, 361 361/60=6 points, the remainder is 1s 6''1'
 */
@property (nonatomic, assign) int avgKmPace;
@property (nonatomic, assign) int fastKmPace; //fastest kilometer pace

//Average Speed km/h Firmware Expanded 100 Times
/*
 123 / 100   1.23km/h
 */
@property (nonatomic, assign) int avgSpeed;

//Maximum speed km/h
@property (nonatomic, assign) int fastSpeed;

//Average cadence steps/minute
@property (nonatomic, assign) int avgStepFrequency;

//average stride length
@property (nonatomic, assign) int avgStepStride;
@property (nonatomic, copy) NSString *creatTime;

//Exercise duration; unit: s
@property (nonatomic, assign) int durations;

//start Time yy-mm-dd h:m:s
@property (nonatomic, copy) NSString *startTime;
@property (nonatomic, copy) NSString *endTime;

//Cumulative duration of extreme workout seconds
@property (nonatomic, assign) int extremeExerciseTime;

//Cumulative duration of fat burning  /s
@property (nonatomic, assign) int fatBurningTime;
@property (nonatomic, assign) int goalData;

//sport goal
@property (nonatomic, assign) SportGoalType goalType;

//VO2 rating 0: No rating 1: Low 2: Amateur 3: Average 4: Average
@property (nonatomic, assign) int grade;
//@property (nonatomic, assign) int hrItemCount;

//Real-time exercise heart rate saves a group every 5 seconds, and saves up to 20 hours
@property (nonatomic, strong) NSArray<NSNumber *> *hrValueItem;
@property (nonatomic, assign) int id;

//No connection app 1 is connected, 0 is not connected
@property (nonatomic, assign) int isConnectApp;

// Real-time speed details save one unit /s every 1 km
@property (nonatomic, strong) NSArray<NSNumber *> *kmPaceItem;
//@property (nonatomic, assign) int kmSpeedCount;

//Real-time kilometer speed details Save once every 1 kilometer, unit km/h
// The actual value is magnified by a hundred times
// For example, 12.34km/h, the actual value is 1234
@property (nonatomic, strong) NSArray<NSNumber *> *kmSpeedItem;


//maximum heart rate
@property (nonatomic, assign) int maxHrValue;

//Maximum stride frequency steps/minute
@property (nonatomic, assign) int maxStepFrequency;

//maximum stride
@property (nonatomic, assign) int maxStepStride;

//minimum heart rate
@property (nonatomic, assign) int minHrValue;

//Real-time mile pace details Save every mile   unit/s
@property (nonatomic, strong) NSArray<NSNumber *> *miPaceItem;

//Real-time mile speed details Save every mile Miles/h
//The actual value is magnified by a hundred times
@property (nonatomic, strong) NSArray<NSNumber *> *miSpeedItem;
@property (nonatomic, strong) NSArray<NSNumber *> *elevationItem;
//@property (nonatomic, assign) int paceCount;

//Recovery time in hours
@property (nonatomic, assign) int recoveryTime;

//0: invalid, 1: movement initiated by app, 2: movement initiated by watch
@property (nonatomic, assign) int sportStartType;
@property (nonatomic, assign) SportType sportType;
//@property (nonatomic, assign) int stepFrequencyCount;

//Real-time cadence details Stored every 5 seconds Steps/minute
@property (nonatomic, strong) NSArray<NSNumber *> *stepFrequencyItem;
//@property (nonatomic, assign) int stepStrideCount;

//Real-time stride saved once every 5S
@property (nonatomic, strong) NSArray<NSNumber *> *stepStrideItem;

// calories Unit: kcal
@property (nonatomic, assign) int totalCalories;

//distance; unit: m
@property (nonatomic, assign) int totalDistance;

//Step count
@property (nonatomic, assign) int totalStep;

//Movement track
@property (nonatomic, strong) NSArray<SportDataModel *> *trailData;


@property (nonatomic, strong) NSArray<SpeedPaceModel *> *speedPaceItem;
@property (nonatomic, assign) int trainingEffect;
@property (nonatomic, assign) int userID;

//VO2 max; unit: ml/kg/min; range 0-80
@property (nonatomic, assign) int vozmax;

//Cumulative duration of warm-up exercise unit/s
@property (nonatomic, assign) int warmUpTime;
@property (nonatomic, assign) int uploadStatus;

//Running power
@property (nonatomic, assign) int avgPower;

//Swimming distance unit: meters
@property (nonatomic, assign) int swimDistance;

//Maximum altitude
@property (nonatomic, assign) int maxElevation;

//Minimum altitude
@property (nonatomic, assign) int minElevation;

//Average altitude
@property (nonatomic, assign) int avgElevation;

//Climb height
@property (nonatomic, assign) int climbHeight;
@property (nonatomic, assign) int met;

//Whether it supports Met
@property (nonatomic, assign) int metSupport;

//Whether altitude data is supported
@property (nonatomic, assign) int elevationSupport;

//Whether running power is supported
@property (nonatomic, assign) int avgPowerSupport;

//Cycle movement duration s
@property (nonatomic, assign) int travelingTime;

//Whether to support cycling movement duration
@property (nonatomic, assign) int travelingTimeSupport;

+ (NSMutableArray<SportModel*>*)initWithArray:(NSArray *)arr;

+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<SportModel*>*)arr;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (NSDictionary *)toDictionary;

@end

@interface SportDataModel : NSObject

@property (nonatomic, assign) int latitude;
@property (nonatomic, assign) int longitude;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (NSDictionary *)toDictionary;

@end

@interface SpeedPaceModel : NSObject

@property (nonatomic, assign) int speed;
@property (nonatomic, assign) int pace;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
