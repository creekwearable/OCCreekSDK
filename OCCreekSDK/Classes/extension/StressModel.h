//
//  StressModel.h
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class StressDataModel;

@interface StressModel : NSObject

@property (nonatomic, assign) int average;  //average stress
@property (nonatomic, copy) NSString *createTime;
@property (nonatomic, strong) NSArray<StressDataModel *> *datas;
@property (nonatomic, copy) NSString *deviceId;
@property (nonatomic, assign) int higher;   //Produces 60 to 79 pressure quantities
@property (nonatomic, assign) int identifier; // Produces 1 to 29 pressure quantities
@property (nonatomic, assign) int low;    // Produces 1 to 29 pressure quantities
@property (nonatomic, assign) int max;  //maximum Stress
@property (nonatomic, assign) int min;  // minimum Stress
@property (nonatomic, assign) int offsetLast;  //The time when the last piece of data was generated     unit /m
@property (nonatomic, assign) int userID;
@property (nonatomic, assign) int usual; //Produces 30 to 59 pressure quantities
@property (nonatomic, assign) int veryHigh; //Produces 79 to 99 pressure quantities
@property (nonatomic, assign) int uploadStatus;

+ (NSMutableArray<StressModel*>*)initWithArray:(NSArray *)arr;
+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<StressModel*>*)arr;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

@interface StressDataModel : NSObject

@property (nonatomic, assign) int offset;  //Starting from 0, the offset from the previous value   unit /m
@property (nonatomic, assign) int value;   //Stress value

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
