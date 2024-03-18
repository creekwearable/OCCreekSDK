//
//  DialParseModel.h
//  OCCreekSDK
//
//  Created by bean on 2024/3/16.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//
@class DialFunctionModel;
@class DialTypeModel;

@interface DialParseModel : NSObject

@property (nonatomic, strong) NSArray<NSString *> *backgroundImagePaths;
@property (nonatomic, strong) NSNumber* backgroundSelectIndex;
@property (nonatomic, strong) NSArray<NSString *> *appColors;
@property (nonatomic, strong) NSNumber* colorSelectIndex;
@property (nonatomic, copy) NSString *previewImageBytes;
@property (nonatomic, strong) NSArray<DialFunctionModel *> *functions;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end


@interface DialFunctionModel : NSObject

@property (nonatomic, copy) NSString *positionImage;
@property (nonatomic, strong) NSNumber* selectedIndex;
@property (nonatomic, strong) NSArray<DialTypeModel *> *typeModels;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

@interface DialTypeModel : NSObject

@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *picture;
@property (nonatomic, copy) NSString *image;
@property (nonatomic, strong) NSNumber* x;
@property (nonatomic, strong) NSNumber* y;
@property (nonatomic, copy) NSString *color;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
