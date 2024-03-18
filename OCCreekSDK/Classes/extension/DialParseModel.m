//
//  DialParseModel.m
//  OCCreekSDK
//
//  Created by bean on 2024/3/16.
//  Copyright © 2024 bean. All rights reserved.
//

#import "DialParseModel.h"

@implementation DialParseModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _backgroundImagePaths = dictionary[@"backgroundImagePaths"];
        _backgroundSelectIndex = dictionary[@"backgroundSelectIndex"];
        _appColors = dictionary[@"appColors"];
        _colorSelectIndex = dictionary[@"colorSelectIndex"];
        _previewImageBytes = dictionary[@"previewImageBytes"];
        
        NSMutableArray *datasArray = [NSMutableArray array];
        for (NSDictionary *dataDict in dictionary[@"functions"]) {
            DialFunctionModel *dataModel = [[DialFunctionModel alloc] initWithDictionary:dataDict];
            [datasArray addObject:dataModel];
        }
        _functions = [datasArray copy];
        
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"backgroundImagePaths"] = self.backgroundImagePaths;
    dictionary[@"backgroundSelectIndex"] = self.backgroundSelectIndex;
    dictionary[@"appColors"] = self.appColors;
    dictionary[@"colorSelectIndex"] = self.colorSelectIndex;
    dictionary[@"previewImageBytes"] = self.previewImageBytes;
    
    NSMutableArray *dataArray = [NSMutableArray array];
    for (DialFunctionModel *dataModel in self.functions) {
        [dataArray addObject:[dataModel toDictionary]];
    }
    dictionary[@"functions"] = [dataArray copy];
    return [dictionary copy];
}

@end

@implementation DialFunctionModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _positionImage = dictionary[@"positionImage"];
        _selectedIndex = dictionary[@"selectedIndex"];
        
        NSMutableArray *datasArray = [NSMutableArray array];
        for (NSDictionary *dataDict in dictionary[@"typeModels"]) {
            DialTypeModel *dataModel = [[DialTypeModel alloc] initWithDictionary:dataDict];
            [datasArray addObject:dataModel];
        }
        _typeModels = [datasArray copy];
        
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"positionImage"] = self.positionImage;
    dictionary[@"selectedIndex"] = self.selectedIndex;
    
    NSMutableArray *dataArray = [NSMutableArray array];
    for (DialTypeModel *dataModel in self.typeModels) {
        [dataArray addObject:[dataModel toDictionary]];
    }
    dictionary[@"typeModels"] = [dataArray copy];
    
    return [dictionary copy];
}

@end

@implementation DialTypeModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _type = dictionary[@"type"];
        _picture = dictionary[@"picture"];
        _image = dictionary[@"image"];
        _x = dictionary[@"x"];
        _y = dictionary[@"y"];
        _color = dictionary[@"color"];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"type"] = self.type;
    dictionary[@"picture"] = self.picture;
    dictionary[@"image"] = self.image;
    dictionary[@"x"] = self.x;
    dictionary[@"y"] = self.y;
    dictionary[@"color"] = self.color;
    return [dictionary copy];
}

@end
