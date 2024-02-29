//
//  HeartRateModel.h
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class HeartRateDataModel;

@interface HeartRateModel : NSObject


//average heart rate
@property (nonatomic, assign) int average;
@property (nonatomic, copy) NSString *creat_time;
@property (nonatomic, strong) NSArray<HeartRateDataModel *> *datas;
@property (nonatomic, assign) int id;

//maximum heart rate
@property (nonatomic, assign) int max;

//minimum heart rate
@property (nonatomic, assign) int min;

//The time when the last piece of data was generated     unit /s
@property (nonatomic, assign) int offset_last;

//Increased heart rate ratio    0-100
@property (nonatomic, assign) int raisedHr;

//resting heart rate
@property (nonatomic, assign) int silent_hr;
@property (nonatomic, assign) int userID;
@property (nonatomic, assign) int uploadStatus;

+ (NSMutableArray<HeartRateModel*>*)initWithArray:(NSArray *)arr;
+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<HeartRateModel*>*)arr;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

@interface HeartRateDataModel : NSObject

@property (nonatomic, assign) int offset;
@property (nonatomic, assign) int value;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
