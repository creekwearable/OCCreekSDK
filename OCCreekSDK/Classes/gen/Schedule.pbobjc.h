// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: schedule.proto

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

@class protocol_schedule_item;
GPB_ENUM_FWD_DECLARE(disp_status);
GPB_ENUM_FWD_DECLARE(notify_type);
GPB_ENUM_FWD_DECLARE(operate_II_type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - ScheduleRoot

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
GPB_FINAL @interface ScheduleRoot : GPBRootObject
@end

#pragma mark - protocol_schedule_item

typedef GPB_ENUM(protocol_schedule_item_FieldNumber) {
  protocol_schedule_item_FieldNumber_ScheduleId = 1,
  protocol_schedule_item_FieldNumber_Status = 2,
  protocol_schedule_item_FieldNumber_Year = 3,
  protocol_schedule_item_FieldNumber_Mon = 4,
  protocol_schedule_item_FieldNumber_Day = 5,
  protocol_schedule_item_FieldNumber_Hour = 6,
  protocol_schedule_item_FieldNumber_Minute = 7,
  protocol_schedule_item_FieldNumber_Sec = 8,
  protocol_schedule_item_FieldNumber_RepeatArray = 9,
  protocol_schedule_item_FieldNumber_TitleLen = 10,
  protocol_schedule_item_FieldNumber_ContentLen = 11,
  protocol_schedule_item_FieldNumber_Title = 12,
  protocol_schedule_item_FieldNumber_Content = 13,
};

/**
 * Set item data subitem data
 **/
GPB_FINAL @interface protocol_schedule_item : GPBMessage

/** 1bytes event id */
@property(nonatomic, readwrite) uint32_t scheduleId;

/** 1bytes DISP_ON display; DISP_OFF-not display */
@property(nonatomic, readwrite) enum disp_status status;

/** 2bytes year */
@property(nonatomic, readwrite) uint32_t year;

@property(nonatomic, readwrite) uint32_t mon;

@property(nonatomic, readwrite) uint32_t day;

/** 1bytes */
@property(nonatomic, readwrite) uint32_t hour;

/** 1bytes */
@property(nonatomic, readwrite) uint32_t minute;

@property(nonatomic, readwrite) uint32_t sec;

/** 7bytes repeated from Monday to Sunday */
@property(nonatomic, readwrite, strong, null_resettable) GPBBoolArray *repeatArray;
/** The number of items in @c repeatArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger repeatArray_Count;

/** 1bytes */
@property(nonatomic, readwrite) uint32_t titleLen;

/** 1bytes */
@property(nonatomic, readwrite) uint32_t contentLen;

/** max:70 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *title;

/** max:150 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *content;

@end

/**
 * Fetches the raw value of a @c protocol_schedule_item's @c status property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_schedule_item_Status_RawValue(protocol_schedule_item *message);
/**
 * Sets the raw value of an @c protocol_schedule_item's @c status property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_schedule_item_Status_RawValue(protocol_schedule_item *message, int32_t value);

#pragma mark - protocol_schedule_operate

typedef GPB_ENUM(protocol_schedule_operate_FieldNumber) {
  protocol_schedule_operate_FieldNumber_Operate = 1,
  protocol_schedule_operate_FieldNumber_NotifyFlag = 2,
  protocol_schedule_operate_FieldNumber_ItemNum = 3,
  protocol_schedule_operate_FieldNumber_ScheduleItem = 4,
};

GPB_FINAL @interface protocol_schedule_operate : GPBMessage

/** 1bytes operation type */
@property(nonatomic, readwrite) enum operate_II_type operate;

/** 1bytes notification type */
@property(nonatomic, readwrite) enum notify_type notifyFlag;

/** Number of items, operation type 1, 2, 3, fill in 0 when sending 1 item data each time for query */
@property(nonatomic, readwrite) uint32_t itemNum;

/** item data item */
@property(nonatomic, readwrite, strong, null_resettable) protocol_schedule_item *scheduleItem;
/** Test to see if @c scheduleItem has been set. */
@property(nonatomic, readwrite) BOOL hasScheduleItem;

@end

/**
 * Fetches the raw value of a @c protocol_schedule_operate's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_schedule_operate_Operate_RawValue(protocol_schedule_operate *message);
/**
 * Sets the raw value of an @c protocol_schedule_operate's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_schedule_operate_Operate_RawValue(protocol_schedule_operate *message, int32_t value);

/**
 * Fetches the raw value of a @c protocol_schedule_operate's @c notifyFlag property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_schedule_operate_NotifyFlag_RawValue(protocol_schedule_operate *message);
/**
 * Sets the raw value of an @c protocol_schedule_operate's @c notifyFlag property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_schedule_operate_NotifyFlag_RawValue(protocol_schedule_operate *message, int32_t value);

#pragma mark - protocol_schedule_inquire_reply

typedef GPB_ENUM(protocol_schedule_inquire_reply_FieldNumber) {
  protocol_schedule_inquire_reply_FieldNumber_FuncTable = 1,
  protocol_schedule_inquire_reply_FieldNumber_Operate = 2,
  protocol_schedule_inquire_reply_FieldNumber_NotifyFlag = 3,
  protocol_schedule_inquire_reply_FieldNumber_ItemNum = 4,
  protocol_schedule_inquire_reply_FieldNumber_ScheduleItem = 5,
};

GPB_FINAL @interface protocol_schedule_inquire_reply : GPBMessage

/** 1bytes function table */
@property(nonatomic, readwrite) uint32_t funcTable;

/** 1bytes operation type */
@property(nonatomic, readwrite) enum operate_II_type operate;

/** 1bytes notification type */
@property(nonatomic, readwrite) enum notify_type notifyFlag;

/** Number of items, operation type 1, 2, 3, fill in 0 when sending 1 item data each time for query */
@property(nonatomic, readwrite) uint32_t itemNum;

/** item data item */
@property(nonatomic, readwrite, strong, null_resettable) protocol_schedule_item *scheduleItem;
/** Test to see if @c scheduleItem has been set. */
@property(nonatomic, readwrite) BOOL hasScheduleItem;

@end

/**
 * Fetches the raw value of a @c protocol_schedule_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_schedule_inquire_reply_Operate_RawValue(protocol_schedule_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_schedule_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_schedule_inquire_reply_Operate_RawValue(protocol_schedule_inquire_reply *message, int32_t value);

/**
 * Fetches the raw value of a @c protocol_schedule_inquire_reply's @c notifyFlag property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_schedule_inquire_reply_NotifyFlag_RawValue(protocol_schedule_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_schedule_inquire_reply's @c notifyFlag property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_schedule_inquire_reply_NotifyFlag_RawValue(protocol_schedule_inquire_reply *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
