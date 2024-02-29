//
//  EventReportModel.h
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EventReportModel : NSObject

@property (nonatomic, copy) NSString *eventId;   //事件id
@property (nonatomic, copy) NSString *subId;     //事件子id
@property (nonatomic, copy) NSString *time;      //事件产生时间
@property (nonatomic, copy) NSString *message;   //消息体

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;
@end

NS_ASSUME_NONNULL_END
