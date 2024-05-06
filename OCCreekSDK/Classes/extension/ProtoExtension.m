//
//  ProtoExtension.m
//  OCCreekSDK
//
//  Created by bean on 2024/5/5.
//  Copyright © 2024 bean. All rights reserved.
//

#import "ProtoExtension.h"


@implementation ProtoExtension

@end

@implementation ScreenTable

@end

@implementation AlarmTable

@end


@implementation protocol_screen_brightness_inquire_reply (Table)

- (ScreenTable *)fromTable {
    ScreenTable *screenTable = [[ScreenTable alloc] init];
    screenTable.night  = NO;
    screenTable.steady = NO;
    screenTable.option = NO;
    
    NSString *str = [[NSNumber numberWithInt:self.funcTable] decimalToBinary];

    if (str.length > 0) {
        unichar firstChar = [str characterAtIndex:0];
        if (firstChar == '1') {
            screenTable.night  = YES;
        }
    }
    
    if (str.length > 1) {
        unichar firstChar = [str characterAtIndex:1];
        if (firstChar == '1') {
            screenTable.steady  = YES;
        }
    }
    if (str.length > 2) {
        unichar firstChar = [str characterAtIndex:2];
        if (firstChar == '1') {
            screenTable.option  = YES;
        }
    }
    return screenTable;
}


@end

@implementation protocol_alarm_inquire_reply (Table)

- (AlarmTable *)fromTable {
    AlarmTable *alarmTable = [[AlarmTable alloc] init];
    alarmTable.later_remind_min  = NO;
    alarmTable.custom_name_list = NO;
    NSString *str = [[NSNumber numberWithInt:self.funcTable] decimalToBinary];
    if (str.length > 0) {
        unichar firstChar = [str characterAtIndex:0];
        if (firstChar == '1') {
            alarmTable.later_remind_min  = YES;
        }
    }
    
    if (str.length > 1) {
        unichar firstChar = [str characterAtIndex:1];
        if (firstChar == '1') {
            alarmTable.custom_name_list  = YES;
        }
    }
    return alarmTable;
}

@end

@implementation NSNumber (Binary)

- (NSString *)decimalToBinary {
    NSUInteger number = [self unsignedIntegerValue];
    NSMutableString *binaryString = [NSMutableString string];
    while (number > 0) {
        [binaryString insertString:(number & 1) ? @"1" : @"0" atIndex:0];
        number >>= 1;
    }
    return binaryString;
}

@end


