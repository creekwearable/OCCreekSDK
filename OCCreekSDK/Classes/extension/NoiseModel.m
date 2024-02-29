//
//  NoiseModel.m
//  OCCreekSDK
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import "NoiseModel.h"

@implementation NoiseModel


+ (NSMutableArray<NoiseModel*>*)initWithArray:(NSArray *)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (NSDictionary *dataDict in arr) {
        NoiseModel* model = [[NoiseModel alloc]initWithDictionary:dataDict];
        [datasArray addObject:model];
    }
    return datasArray;
}

+ (NSMutableArray<NSDictionary*>*)initWithModelArray:(NSArray<NoiseModel*>*)arr {
    NSMutableArray *datasArray = [NSMutableArray array];
    for (NoiseModel *model in arr) {
        [datasArray addObject:[model toDictionary]];
    }
    return datasArray;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _average = [dictionary[@"average"] intValue];
        _createTime = dictionary[@"creat_time"];
        NSMutableArray *datasArray = [NSMutableArray array];
        for (NSDictionary *dataDict in dictionary[@"datas"]) {
            NoiseDataModel *dataModel = [[NoiseDataModel alloc] initWithDictionary:dataDict];
            [datasArray addObject:dataModel];
        }
        _datas = [datasArray copy];
        _identifier = [dictionary[@"id"] intValue];
        _max = [dictionary[@"max"] intValue];
        _min = [dictionary[@"min"] intValue];
        _offsetLast = [dictionary[@"offset_last"] intValue];
        _userID = [dictionary[@"userID"] intValue];
        _uploadStatus = [dictionary[@"uploadStatus"] intValue];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"average"] = @(self.average);
    dictionary[@"creat_time"] = self.createTime;
    NSMutableArray *dataArray = [NSMutableArray array];
    for (NoiseDataModel *dataModel in self.datas) {
        [dataArray addObject:[dataModel toDictionary]];
    }
    dictionary[@"datas"] = [dataArray copy];
    dictionary[@"id"] = @(self.identifier);
    dictionary[@"max"] = @(self.max);
    dictionary[@"min"] = @(self.min);
    dictionary[@"offset_last"] = @(self.offsetLast);
    dictionary[@"userID"] = @(self.userID);
    dictionary[@"uploadStatus"] = @(self.uploadStatus);
    return [dictionary copy];
}

@end


@implementation NoiseDataModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _offset = [dictionary[@"offset"] intValue];
        _value = [dictionary[@"value"] intValue];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"offset"] = @(self.offset);
    dictionary[@"value"] = @(self.value);
    return [dictionary copy];
}

@end
