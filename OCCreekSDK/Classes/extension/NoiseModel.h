//
//  NoiseModel.h
//  OCCreekSDK
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NoiseDataModel;

NS_ASSUME_NONNULL_BEGIN

@interface NoiseModel : NSObject


@property (nonatomic, assign) int average;   //average Noise
@property (nonatomic, copy) NSString *createTime; //time
@property (nonatomic, strong) NSArray<NoiseDataModel *> *datas;
@property (nonatomic, assign) int identifier;
@property (nonatomic, assign) int max;    // maximum Noise
@property (nonatomic, assign) int min;    // minimum Noise
@property (nonatomic, assign) int offsetLast; //The time when the last piece of data was generated     unit /m
@property (nonatomic, assign) int userID;
@property (nonatomic, assign) int uploadStatus;


+ (NSMutableArray<NoiseModel*>*)initWithArray:(NSArray *)arr;
+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<NoiseModel*>*)arr;


- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end


@interface NoiseDataModel : NSObject

@property (nonatomic, assign) int offset;
@property (nonatomic, assign) int value;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
