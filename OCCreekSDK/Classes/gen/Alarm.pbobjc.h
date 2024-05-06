// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: alarm.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30004
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30004 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class protocol_set_alarm_item;
GPB_ENUM_FWD_DECLARE(alarm_type);
GPB_ENUM_FWD_DECLARE(disp_status);
GPB_ENUM_FWD_DECLARE(operate_type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - AlarmRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
GPB_FINAL @interface AlarmRoot : GPBRootObject
@end

#pragma mark - protocol_set_alarm_item

typedef GPB_ENUM(protocol_set_alarm_item_FieldNumber) {
  protocol_set_alarm_item_FieldNumber_AlarmId = 1,
  protocol_set_alarm_item_FieldNumber_DispStatus = 2,
  protocol_set_alarm_item_FieldNumber_Type = 3,
  protocol_set_alarm_item_FieldNumber_Hour = 4,
  protocol_set_alarm_item_FieldNumber_Minute = 5,
  protocol_set_alarm_item_FieldNumber_SwitchFlag = 6,
  protocol_set_alarm_item_FieldNumber_RepeatArray = 7,
  protocol_set_alarm_item_FieldNumber_LaterRemindSwitchFlag = 8,
  protocol_set_alarm_item_FieldNumber_LaterRemindRepeatTimes = 9,
  protocol_set_alarm_item_FieldNumber_LaterRemindMin = 10,
  protocol_set_alarm_item_FieldNumber_VibrateOnOff = 11,
  protocol_set_alarm_item_FieldNumber_Name = 12,
};

/**
 * Set alarm clock data subitem data
 **/
GPB_FINAL @interface protocol_set_alarm_item : GPBMessage

/** 1bytes alarm clock id starts from 0 */
@property(nonatomic, readwrite) uint32_t alarmId;

/** 1bytes display status disp_off does not display disp_on display */
@property(nonatomic, readwrite) enum disp_status dispStatus;

/** 1bytes alarm clock type */
@property(nonatomic, readwrite) enum alarm_type type;

/** 1bytes */
@property(nonatomic, readwrite) uint32_t hour;

/** 1bytes */
@property(nonatomic, readwrite) uint32_t minute;

/** 1bytes switch */
@property(nonatomic, readwrite) BOOL switchFlag;

/** 7bytes repeated from Monday to Saturday */
@property(nonatomic, readwrite, strong, null_resettable) GPBBoolArray *repeatArray;
/** The number of items in @c repeatArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger repeatArray_Count;

@property(nonatomic, readwrite) BOOL laterRemindSwitchFlag;

/** 1byte Remind the number of times to repeat the alarm later */
@property(nonatomic, readwrite) uint32_t laterRemindRepeatTimes;

/** 1bytes later reminder minutes */
@property(nonatomic, readwrite) uint32_t laterRemindMin;

/** 1bytes alarm clock vibration switch 0 off 1 on */
@property(nonatomic, readwrite) BOOL vibrateOnOff;

/** max:20 alarm clock name */
@property(nonatomic, readwrite, copy, null_resettable) NSData *name;

@end

/**
 * Fetches the raw value of a @c protocol_set_alarm_item's @c dispStatus property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_set_alarm_item_DispStatus_RawValue(protocol_set_alarm_item *message);
/**
 * Sets the raw value of an @c protocol_set_alarm_item's @c dispStatus property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_set_alarm_item_DispStatus_RawValue(protocol_set_alarm_item *message, int32_t value);

/**
 * Fetches the raw value of a @c protocol_set_alarm_item's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_set_alarm_item_Type_RawValue(protocol_set_alarm_item *message);
/**
 * Sets the raw value of an @c protocol_set_alarm_item's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_set_alarm_item_Type_RawValue(protocol_set_alarm_item *message, int32_t value);

#pragma mark - protocol_alarm_operate

typedef GPB_ENUM(protocol_alarm_operate_FieldNumber) {
  protocol_alarm_operate_FieldNumber_Operate = 1,
  protocol_alarm_operate_FieldNumber_Num = 2,
  protocol_alarm_operate_FieldNumber_AlarmItemArray = 3,
  protocol_alarm_operate_FieldNumber_CustomNameListArray = 4,
};

GPB_FINAL @interface protocol_alarm_operate : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes number of alarm clocks */
@property(nonatomic, readwrite) uint32_t num;

/** max: 20 */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<protocol_set_alarm_item*> *alarmItemArray;
/** The number of items in @c alarmItemArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger alarmItemArray_Count;

/** Alarm clock customization option names max:10 */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSData*> *customNameListArray;
/** The number of items in @c customNameListArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger customNameListArray_Count;

@end

/**
 * Fetches the raw value of a @c protocol_alarm_operate's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_alarm_operate_Operate_RawValue(protocol_alarm_operate *message);
/**
 * Sets the raw value of an @c protocol_alarm_operate's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_alarm_operate_Operate_RawValue(protocol_alarm_operate *message, int32_t value);

#pragma mark - protocol_alarm_inquire_reply

typedef GPB_ENUM(protocol_alarm_inquire_reply_FieldNumber) {
  protocol_alarm_inquire_reply_FieldNumber_FuncTable = 1,
  protocol_alarm_inquire_reply_FieldNumber_AlarmSupportMax = 2,
  protocol_alarm_inquire_reply_FieldNumber_Operate = 3,
  protocol_alarm_inquire_reply_FieldNumber_Num = 4,
  protocol_alarm_inquire_reply_FieldNumber_AlarmItemArray = 5,
  protocol_alarm_inquire_reply_FieldNumber_CustomNameListArray = 6,
};

GPB_FINAL @interface protocol_alarm_inquire_reply : GPBMessage

/** 1bytes function table */
@property(nonatomic, readwrite) uint32_t funcTable;

/** 1bytes alarm supports the maximum number */
@property(nonatomic, readwrite) uint32_t alarmSupportMax;

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes number of alarm clocks */
@property(nonatomic, readwrite) uint32_t num;

/** max: 20 */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<protocol_set_alarm_item*> *alarmItemArray;
/** The number of items in @c alarmItemArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger alarmItemArray_Count;

/** Alarm clock customization option names max:10 */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSData*> *customNameListArray;
/** The number of items in @c customNameListArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger customNameListArray_Count;

@end

/**
 * Fetches the raw value of a @c protocol_alarm_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_alarm_inquire_reply_Operate_RawValue(protocol_alarm_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_alarm_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_alarm_inquire_reply_Operate_RawValue(protocol_alarm_inquire_reply *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
