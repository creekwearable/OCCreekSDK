//
//  OxygenModel.h
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class OxygenDataModel;

@interface OxygenModel : NSObject

@property (nonatomic, assign) int average; //average oxygen
@property (nonatomic, copy) NSString *creat_time;
@property (nonatomic, strong) NSArray<OxygenDataModel *> *datas;
@property (nonatomic, assign) int id;
@property (nonatomic, assign) int max; // maximum oxygen
@property (nonatomic, assign) int min; // minimum oxygen
@property (nonatomic, assign) int offset_last; //The time when the last piece of data was generated     unit /m
@property (nonatomic, assign) int userID;
@property (nonatomic, assign) int uploadStatus;

+ (NSMutableArray<OxygenModel*>*)initWithArray:(NSArray *)arr;
+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<OxygenModel*>*)arr;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;



@end


@interface OxygenDataModel : NSObject

//Starting from 0, the offset from the previous value   unit /m
@property (nonatomic, assign) int offset;

//oxygen value
@property (nonatomic, assign) int value;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
