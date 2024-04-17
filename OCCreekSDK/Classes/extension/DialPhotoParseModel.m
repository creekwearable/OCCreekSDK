//
//  DialPhotoParseModel.m
//  OCCreekSDK
//
//  Created by bean on 2024/4/16.
//  Copyright © 2024 bean. All rights reserved.
//

#import "DialPhotoParseModel.h"

@implementation DialPhotoParseModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _photoImagePaths = dictionary[@"photoImagePaths"];
        _appColors = dictionary[@"appColors"];
        _clockPositionImagePaths = dictionary[@"clockPositionImagePaths"];
        _photoSelectIndex = dictionary[@"photoSelectIndex"];
        _colorSelectIndexList = dictionary[@"colorSelectIndexList"];
        _clockPositionSelectIndexList = dictionary[@"clockPositionSelectIndexList"];
        _previewImageBytes = dictionary[@"previewImageBytes"];
    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    dictionary[@"photoImagePaths"] = self.photoImagePaths;
    dictionary[@"appColors"] = self.appColors;
    dictionary[@"clockPositionImagePaths"] = self.clockPositionImagePaths;
    dictionary[@"photoSelectIndex"] = self.photoSelectIndex;
    dictionary[@"colorSelectIndexList"] = self.colorSelectIndexList;
    dictionary[@"clockPositionSelectIndexList"] = self.clockPositionSelectIndexList;
    dictionary[@"previewImageBytes"] = self.previewImageBytes;
    return [dictionary copy];
}


@end
