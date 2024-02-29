// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: screen.proto

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

@class protocol_screen_aod_time_setting;
@class protocol_screen_night_auto_adjust;
GPB_ENUM_FWD_DECLARE(aod_mode);
GPB_ENUM_FWD_DECLARE(operate_type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - ScreenRoot

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
GPB_FINAL @interface ScreenRoot : GPBRootObject
@end

#pragma mark - protocol_screen_night_auto_adjust

typedef GPB_ENUM(protocol_screen_night_auto_adjust_FieldNumber) {
  protocol_screen_night_auto_adjust_FieldNumber_SwitchFlag = 1,
  protocol_screen_night_auto_adjust_FieldNumber_StartHour = 2,
  protocol_screen_night_auto_adjust_FieldNumber_StartMinute = 3,
  protocol_screen_night_auto_adjust_FieldNumber_EndHour = 4,
  protocol_screen_night_auto_adjust_FieldNumber_EndMinute = 5,
  protocol_screen_night_auto_adjust_FieldNumber_NightLevel = 6,
};

GPB_FINAL @interface protocol_screen_night_auto_adjust : GPBMessage

/** 1bytes automatic brightness adjustment at night if true is on, false is off */
@property(nonatomic, readwrite) BOOL switchFlag;

/** Starting time */
@property(nonatomic, readwrite) uint32_t startHour;

@property(nonatomic, readwrite) uint32_t startMinute;

/** End Time */
@property(nonatomic, readwrite) uint32_t endHour;

@property(nonatomic, readwrite) uint32_t endMinute;

/** 1bytes night brightness level (0-100) */
@property(nonatomic, readwrite) uint32_t nightLevel;

@end

#pragma mark - protocol_screen_aod_time_setting

typedef GPB_ENUM(protocol_screen_aod_time_setting_FieldNumber) {
  protocol_screen_aod_time_setting_FieldNumber_Mode = 1,
  protocol_screen_aod_time_setting_FieldNumber_StartHour = 2,
  protocol_screen_aod_time_setting_FieldNumber_StartMinute = 3,
  protocol_screen_aod_time_setting_FieldNumber_EndHour = 4,
  protocol_screen_aod_time_setting_FieldNumber_EndMinute = 5,
};

GPB_FINAL @interface protocol_screen_aod_time_setting : GPBMessage

@property(nonatomic, readwrite) enum aod_mode mode;

/** Start time timing mode */
@property(nonatomic, readwrite) uint32_t startHour;

@property(nonatomic, readwrite) uint32_t startMinute;

/** End Time */
@property(nonatomic, readwrite) uint32_t endHour;

@property(nonatomic, readwrite) uint32_t endMinute;

@end

/**
 * Fetches the raw value of a @c protocol_screen_aod_time_setting's @c mode property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_screen_aod_time_setting_Mode_RawValue(protocol_screen_aod_time_setting *message);
/**
 * Sets the raw value of an @c protocol_screen_aod_time_setting's @c mode property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_screen_aod_time_setting_Mode_RawValue(protocol_screen_aod_time_setting *message, int32_t value);

#pragma mark - protocol_screen_brightness_operate

typedef GPB_ENUM(protocol_screen_brightness_operate_FieldNumber) {
  protocol_screen_brightness_operate_FieldNumber_Operate = 1,
  protocol_screen_brightness_operate_FieldNumber_Level = 2,
  protocol_screen_brightness_operate_FieldNumber_ShowInterval = 3,
  protocol_screen_brightness_operate_FieldNumber_NightAutoAdjust = 4,
  protocol_screen_brightness_operate_FieldNumber_AodSwitchFlag = 5,
  protocol_screen_brightness_operate_FieldNumber_RaiseWristSwitchFlag = 6,
  protocol_screen_brightness_operate_FieldNumber_AodTimeSetting = 7,
  protocol_screen_brightness_operate_FieldNumber_LevelFlag = 8,
};

GPB_FINAL @interface protocol_screen_brightness_operate : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: setting */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes (0-100) */
@property(nonatomic, readwrite) uint32_t level;

/** 1bytes screen display interval, such as 5 seconds */
@property(nonatomic, readwrite) uint32_t showInterval;

/** Automatic brightness adjustment sub-item data at night */
@property(nonatomic, readwrite, strong, null_resettable) protocol_screen_night_auto_adjust *nightAutoAdjust;
/** Test to see if @c nightAutoAdjust has been set. */
@property(nonatomic, readwrite) BOOL hasNightAutoAdjust;

/** 1bytes screen display switch true to turn on, false to turn off */
@property(nonatomic, readwrite) BOOL aodSwitchFlag;

/** 1bytes switch to light up the screen when raising the wrist, true to turn on, false to turn off */
@property(nonatomic, readwrite) BOOL raiseWristSwitchFlag;

/** Always on mode selection */
@property(nonatomic, readwrite, strong, null_resettable) protocol_screen_aod_time_setting *aodTimeSetting;
/** Test to see if @c aodTimeSetting has been set. */
@property(nonatomic, readwrite) BOOL hasAodTimeSetting;

/** Whether to set the brightness to take effect */
@property(nonatomic, readwrite) BOOL levelFlag;

@end

/**
 * Fetches the raw value of a @c protocol_screen_brightness_operate's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_screen_brightness_operate_Operate_RawValue(protocol_screen_brightness_operate *message);
/**
 * Sets the raw value of an @c protocol_screen_brightness_operate's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_screen_brightness_operate_Operate_RawValue(protocol_screen_brightness_operate *message, int32_t value);

#pragma mark - protocol_screen_brightness_inquire_reply

typedef GPB_ENUM(protocol_screen_brightness_inquire_reply_FieldNumber) {
  protocol_screen_brightness_inquire_reply_FieldNumber_FuncTable = 1,
  protocol_screen_brightness_inquire_reply_FieldNumber_Operate = 2,
  protocol_screen_brightness_inquire_reply_FieldNumber_Level = 3,
  protocol_screen_brightness_inquire_reply_FieldNumber_ShowInterval = 4,
  protocol_screen_brightness_inquire_reply_FieldNumber_NightAutoAdjust = 5,
  protocol_screen_brightness_inquire_reply_FieldNumber_AodSwitchFlag = 6,
  protocol_screen_brightness_inquire_reply_FieldNumber_RaiseWristSwitchFlag = 7,
  protocol_screen_brightness_inquire_reply_FieldNumber_AodTimeSetting = 8,
};

GPB_FINAL @interface protocol_screen_brightness_inquire_reply : GPBMessage

/** 1bytes function table */
@property(nonatomic, readwrite) uint32_t funcTable;

/** 1bytes operation type 0: invalid operation 1: query 2: setting */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes (0-100) */
@property(nonatomic, readwrite) uint32_t level;

/** 1bytes screen display interval unit: seconds */
@property(nonatomic, readwrite) uint32_t showInterval;

/** Night automatic brightness adjustment sub-item data */
@property(nonatomic, readwrite, strong, null_resettable) protocol_screen_night_auto_adjust *nightAutoAdjust;
/** Test to see if @c nightAutoAdjust has been set. */
@property(nonatomic, readwrite) BOOL hasNightAutoAdjust;

/** 1bytes always-on display switch true is on, false is off */
@property(nonatomic, readwrite) BOOL aodSwitchFlag;

/** 1bytes switch to light up the screen when raising the wrist, true to turn on, false to turn off */
@property(nonatomic, readwrite) BOOL raiseWristSwitchFlag;

/** Always on mode selection */
@property(nonatomic, readwrite, strong, null_resettable) protocol_screen_aod_time_setting *aodTimeSetting;
/** Test to see if @c aodTimeSetting has been set. */
@property(nonatomic, readwrite) BOOL hasAodTimeSetting;

@end

/**
 * Fetches the raw value of a @c protocol_screen_brightness_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_screen_brightness_inquire_reply_Operate_RawValue(protocol_screen_brightness_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_screen_brightness_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_screen_brightness_inquire_reply_Operate_RawValue(protocol_screen_brightness_inquire_reply *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
