// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: focus.proto

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

@class protocol_focus_sleep_mode;
GPB_ENUM_FWD_DECLARE(operate_type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - FocusRoot

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
GPB_FINAL @interface FocusRoot : GPBRootObject
@end

#pragma mark - protocol_focus_sleep_mode

typedef GPB_ENUM(protocol_focus_sleep_mode_FieldNumber) {
  protocol_focus_sleep_mode_FieldNumber_SwitchFlag = 1,
  protocol_focus_sleep_mode_FieldNumber_StartHour = 2,
  protocol_focus_sleep_mode_FieldNumber_StartMinute = 3,
  protocol_focus_sleep_mode_FieldNumber_EndHour = 4,
  protocol_focus_sleep_mode_FieldNumber_EndMinute = 5,
};

GPB_FINAL @interface protocol_focus_sleep_mode : GPBMessage

@property(nonatomic, readwrite) BOOL switchFlag;

/** Starting time */
@property(nonatomic, readwrite) uint32_t startHour;

@property(nonatomic, readwrite) uint32_t startMinute;

/** End Time */
@property(nonatomic, readwrite) uint32_t endHour;

@property(nonatomic, readwrite) uint32_t endMinute;

@end

#pragma mark - protocol_focus_mode_operate

typedef GPB_ENUM(protocol_focus_mode_operate_FieldNumber) {
  protocol_focus_mode_operate_FieldNumber_Operate = 1,
  protocol_focus_mode_operate_FieldNumber_SleepMode = 2,
};

GPB_FINAL @interface protocol_focus_mode_operate : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: setting */
@property(nonatomic, readwrite) enum operate_type operate;

/** sleep mode */
@property(nonatomic, readwrite, strong, null_resettable) protocol_focus_sleep_mode *sleepMode;
/** Test to see if @c sleepMode has been set. */
@property(nonatomic, readwrite) BOOL hasSleepMode;

@end

/**
 * Fetches the raw value of a @c protocol_focus_mode_operate's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_focus_mode_operate_Operate_RawValue(protocol_focus_mode_operate *message);
/**
 * Sets the raw value of an @c protocol_focus_mode_operate's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_focus_mode_operate_Operate_RawValue(protocol_focus_mode_operate *message, int32_t value);

#pragma mark - protocol_focus_mode_inquire_reply

typedef GPB_ENUM(protocol_focus_mode_inquire_reply_FieldNumber) {
  protocol_focus_mode_inquire_reply_FieldNumber_Operate = 1,
  protocol_focus_mode_inquire_reply_FieldNumber_FuncTable = 2,
  protocol_focus_mode_inquire_reply_FieldNumber_SleepMode = 3,
};

GPB_FINAL @interface protocol_focus_mode_inquire_reply : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: setting */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes function table */
@property(nonatomic, readwrite) uint32_t funcTable;

/** sleep mode */
@property(nonatomic, readwrite, strong, null_resettable) protocol_focus_sleep_mode *sleepMode;
/** Test to see if @c sleepMode has been set. */
@property(nonatomic, readwrite) BOOL hasSleepMode;

@end

/**
 * Fetches the raw value of a @c protocol_focus_mode_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_focus_mode_inquire_reply_Operate_RawValue(protocol_focus_mode_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_focus_mode_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_focus_mode_inquire_reply_Operate_RawValue(protocol_focus_mode_inquire_reply *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
