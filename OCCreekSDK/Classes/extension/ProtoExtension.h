//
//  ProtoExtension.h
//  OCCreekSDK
//
//  Created by bean on 2024/5/5.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Screen.pbobjc.h"
#import "Alarm.pbobjc.h"

NS_ASSUME_NONNULL_BEGIN

@interface ProtoExtension : NSObject

@end


@interface ScreenTable : NSObject

@property (nonatomic, assign) BOOL night;
@property (nonatomic, assign) BOOL steady;
@property (nonatomic, assign) BOOL option;

@end

@interface AlarmTable : NSObject

@property (nonatomic, assign) BOOL later_remind_min;
@property (nonatomic, assign) BOOL custom_name_list;

@end


@interface protocol_screen_brightness_inquire_reply (Table)

- (ScreenTable *)fromTable;

@end

@interface protocol_alarm_inquire_reply (Table)

- (AlarmTable *)fromTable;

@end


@interface NSNumber (Binary)

- (NSString *)decimalToBinary;

@end

NS_ASSUME_NONNULL_END
