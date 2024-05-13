//
//  UpgradeModel.h
//  OCCreekSDK
//
//  Created by bean on 2024/5/13.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpgradeModel : NSObject

@property (nonatomic, strong) NSNumber* totalResource;

@property (nonatomic, strong) NSNumber* step;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
