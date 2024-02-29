// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: waterMonitor.proto

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

GPB_ENUM_FWD_DECLARE(notify_type);
GPB_ENUM_FWD_DECLARE(operate_type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - WaterMonitorRoot

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
GPB_FINAL @interface WaterMonitorRoot : GPBRootObject
@end

#pragma mark - protocol_drink_water_operate

typedef GPB_ENUM(protocol_drink_water_operate_FieldNumber) {
  protocol_drink_water_operate_FieldNumber_Operate = 1,
  protocol_drink_water_operate_FieldNumber_SwitchFlag = 2,
  protocol_drink_water_operate_FieldNumber_NotifyFlag = 3,
  protocol_drink_water_operate_FieldNumber_StartHour = 4,
  protocol_drink_water_operate_FieldNumber_StartMinute = 5,
  protocol_drink_water_operate_FieldNumber_EndHour = 6,
  protocol_drink_water_operate_FieldNumber_EndMinute = 7,
  protocol_drink_water_operate_FieldNumber_RepeatArray = 8,
  protocol_drink_water_operate_FieldNumber_Interval = 9,
};

GPB_FINAL @interface protocol_drink_water_operate : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes drinking water reminder switch true on, false off */
@property(nonatomic, readwrite) BOOL switchFlag;

/** 1bytes notification type */
@property(nonatomic, readwrite) enum notify_type notifyFlag;

/** Reminder start time */
@property(nonatomic, readwrite) uint32_t startHour;

@property(nonatomic, readwrite) uint32_t startMinute;

/** Reminder end time */
@property(nonatomic, readwrite) uint32_t endHour;

@property(nonatomic, readwrite) uint32_t endMinute;

/** 1bytes repeat cycle Monday~Sunday */
@property(nonatomic, readwrite, strong, null_resettable) GPBBoolArray *repeatArray;
/** The number of items in @c repeatArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger repeatArray_Count;

/** 2bytes reminder interval, in minutes */
@property(nonatomic, readwrite) uint32_t interval;

@end

/**
 * Fetches the raw value of a @c protocol_drink_water_operate's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_drink_water_operate_Operate_RawValue(protocol_drink_water_operate *message);
/**
 * Sets the raw value of an @c protocol_drink_water_operate's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_drink_water_operate_Operate_RawValue(protocol_drink_water_operate *message, int32_t value);

/**
 * Fetches the raw value of a @c protocol_drink_water_operate's @c notifyFlag property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_drink_water_operate_NotifyFlag_RawValue(protocol_drink_water_operate *message);
/**
 * Sets the raw value of an @c protocol_drink_water_operate's @c notifyFlag property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_drink_water_operate_NotifyFlag_RawValue(protocol_drink_water_operate *message, int32_t value);

#pragma mark - protocol_drink_water_inquire_reply

typedef GPB_ENUM(protocol_drink_water_inquire_reply_FieldNumber) {
  protocol_drink_water_inquire_reply_FieldNumber_FuncTable = 1,
  protocol_drink_water_inquire_reply_FieldNumber_Operate = 2,
  protocol_drink_water_inquire_reply_FieldNumber_SwitchFlag = 3,
  protocol_drink_water_inquire_reply_FieldNumber_NotifyFlag = 4,
  protocol_drink_water_inquire_reply_FieldNumber_StartHour = 5,
  protocol_drink_water_inquire_reply_FieldNumber_StartMinute = 6,
  protocol_drink_water_inquire_reply_FieldNumber_EndHour = 7,
  protocol_drink_water_inquire_reply_FieldNumber_EndMinute = 8,
  protocol_drink_water_inquire_reply_FieldNumber_RepeatArray = 9,
  protocol_drink_water_inquire_reply_FieldNumber_Interval = 10,
};

GPB_FINAL @interface protocol_drink_water_inquire_reply : GPBMessage

/** 1bytes function table */
@property(nonatomic, readwrite) uint32_t funcTable;

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1byte water drinking reminder switch true on, false off */
@property(nonatomic, readwrite) BOOL switchFlag;

/** 1bytes notification type */
@property(nonatomic, readwrite) enum notify_type notifyFlag;

/** Reminder start time */
@property(nonatomic, readwrite) uint32_t startHour;

@property(nonatomic, readwrite) uint32_t startMinute;

/** Reminder end time */
@property(nonatomic, readwrite) uint32_t endHour;

@property(nonatomic, readwrite) uint32_t endMinute;

/** 1bytes repeat cycle Monday~Sunday */
@property(nonatomic, readwrite, strong, null_resettable) GPBBoolArray *repeatArray;
/** The number of items in @c repeatArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger repeatArray_Count;

/** 2bytes reminder interval, in minutes */
@property(nonatomic, readwrite) uint32_t interval;

@end

/**
 * Fetches the raw value of a @c protocol_drink_water_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_drink_water_inquire_reply_Operate_RawValue(protocol_drink_water_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_drink_water_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_drink_water_inquire_reply_Operate_RawValue(protocol_drink_water_inquire_reply *message, int32_t value);

/**
 * Fetches the raw value of a @c protocol_drink_water_inquire_reply's @c notifyFlag property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_drink_water_inquire_reply_NotifyFlag_RawValue(protocol_drink_water_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_drink_water_inquire_reply's @c notifyFlag property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_drink_water_inquire_reply_NotifyFlag_RawValue(protocol_drink_water_inquire_reply *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
