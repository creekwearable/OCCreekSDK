//
//  HrvModel.h
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@class HrvDataModel;

@interface HrvModel : NSObject


//average Noise
@property (nonatomic, strong) NSNumber *average;
@property (nonatomic, copy) NSString *creat_time;
@property (nonatomic, strong) NSArray<HrvDataModel *> *datas;
@property (nonatomic, strong) NSNumber *id;
@property (nonatomic, strong) NSNumber *max;
@property (nonatomic, strong) NSNumber *min;

@property (nonatomic, strong) NSNumber *sleepMax;
@property (nonatomic, strong) NSNumber *sleepMin;

//The time when the last piece of data was generated     unit /m
@property (nonatomic, strong) NSNumber *offset_last;
@property (nonatomic, strong) NSNumber *userID;
@property (nonatomic, strong) NSNumber *uploadStatus;

+ (NSMutableArray<HrvModel*>*)initWithArray:(NSArray *)arr;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

@interface HrvDataModel : NSObject

//Starting from 0, the offset from the previous value   unit /m
@property (nonatomic, strong) NSNumber *offset;

//Noise value
@property (nonatomic, strong) NSNumber *value;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
