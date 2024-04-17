//
//  DialPhotoParseModel.h
//  OCCreekSDK
//
//  Created by bean on 2024/4/16.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DialPhotoParseModel : NSObject

@property (nonatomic, strong) NSArray<NSString *> *photoImagePaths;
@property (nonatomic, strong) NSArray<NSString *> *appColors;
@property (nonatomic, strong) NSArray<NSString *> *clockPositionImagePaths;
@property (nonatomic, strong) NSNumber* photoSelectIndex;
@property (nonatomic, strong) NSArray<NSNumber *> *colorSelectIndexList;
@property (nonatomic, strong) NSArray<NSNumber *> *clockPositionSelectIndexList;
@property (nonatomic, copy) NSString *previewImageBytes;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
