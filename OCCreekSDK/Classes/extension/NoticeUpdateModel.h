//
//  NoticeUpdateModel.h
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EnumValue.h"

NS_ASSUME_NONNULL_BEGIN

@interface NoticeUpdateModel : NSObject

@property (nonatomic, assign) EventIdType eventId;
@property (nonatomic, assign) int eventKey;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
