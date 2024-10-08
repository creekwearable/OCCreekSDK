// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: userinfo.proto

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

@class protocol_goal_setting;
@class protocol_perferences;
@class protocol_personal_info;
GPB_ENUM_FWD_DECLARE(gender_type);
GPB_ENUM_FWD_DECLARE(notify_type);
GPB_ENUM_FWD_DECLARE(operate_type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - UserinfoRoot

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
GPB_FINAL @interface UserinfoRoot : GPBRootObject
@end

#pragma mark - protocol_personal_info

typedef GPB_ENUM(protocol_personal_info_FieldNumber) {
  protocol_personal_info_FieldNumber_Height = 1,
  protocol_personal_info_FieldNumber_Weight = 2,
  protocol_personal_info_FieldNumber_Gender = 3,
  protocol_personal_info_FieldNumber_Year = 4,
  protocol_personal_info_FieldNumber_Month = 5,
  protocol_personal_info_FieldNumber_Day = 6,
};

GPB_FINAL @interface protocol_personal_info : GPBMessage

/** 1bytes height */
@property(nonatomic, readwrite) uint32_t height;

/** 2bytes weight kg has a decimal point, and the set value is one hundred times the actual weight. */
@property(nonatomic, readwrite) uint32_t weight;

/** 1bytes gender 0: male 1: female */
@property(nonatomic, readwrite) enum gender_type gender;

/** 2bytes //Birthday year */
@property(nonatomic, readwrite) uint32_t year;

/** 1bytes */
@property(nonatomic, readwrite) uint32_t month;

/** 1bytes */
@property(nonatomic, readwrite) uint32_t day;

@end

/**
 * Fetches the raw value of a @c protocol_personal_info's @c gender property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_personal_info_Gender_RawValue(protocol_personal_info *message);
/**
 * Sets the raw value of an @c protocol_personal_info's @c gender property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_personal_info_Gender_RawValue(protocol_personal_info *message, int32_t value);

#pragma mark - protocol_perferences

typedef GPB_ENUM(protocol_perferences_FieldNumber) {
  protocol_perferences_FieldNumber_DistUnit = 1,
  protocol_perferences_FieldNumber_WeightUnit = 2,
  protocol_perferences_FieldNumber_AirTempUnit = 3,
  protocol_perferences_FieldNumber_SkinTempUnit = 4,
  protocol_perferences_FieldNumber_Is12HourFormat = 5,
  protocol_perferences_FieldNumber_WeekStartDay = 6,
  protocol_perferences_FieldNumber_CalorieUnit = 7,
  protocol_perferences_FieldNumber_SwimPoolUnit = 8,
  protocol_perferences_FieldNumber_CyclingUnit = 9,
  protocol_perferences_FieldNumber_WalkingRunningUnit = 10,
  protocol_perferences_FieldNumber_StrideUnit = 11,
  protocol_perferences_FieldNumber_HeightUnit = 12,
  protocol_perferences_FieldNumber_AltitudeUnit = 13,
  protocol_perferences_FieldNumber_WindSpeedUnit = 14,
  protocol_perferences_FieldNumber_VisibilityUnit = 15,
};

GPB_FINAL @interface protocol_perferences : GPBMessage

/** 1bytes distance unit 0x00: invalid 0x01: km, 0x02: mi */
@property(nonatomic, readwrite) uint32_t distUnit;

/** 1bytes weight unit: 0x00: invalid, 0x01: kg, 0x02: lb, 0x03: stone) */
@property(nonatomic, readwrite) uint32_t weightUnit;

/** 1bytes weather temperature unit 0x00: invalid 0x01:℃, 0x02:℉ */
@property(nonatomic, readwrite) uint32_t airTempUnit;

/** 1bytes body temperature unit 0x00: invalid 0x01:℃, 0x02:℉ */
@property(nonatomic, readwrite) uint32_t skinTempUnit;

/** 1bytes time format (0x00: invalid<br>0x01: 24-hour format, 0x02: 12-hour format) */
@property(nonatomic, readwrite) uint32_t is12HourFormat;

/** 1bytes week start day 0x00 week 1, 0x01 Sunday,,0x02 week 6 */
@property(nonatomic, readwrite) uint32_t weekStartDay;

/** 1bytes calorie unit setting 0 is invalid, 1: default kilocalories; 2: kcal; 3: kilojoules */
@property(nonatomic, readwrite) uint32_t calorieUnit;

/** 1bytes swimming pool unit setting 0 is invalid, 1: Default meter; 2: Code */
@property(nonatomic, readwrite) uint32_t swimPoolUnit;

/** 1bytes cycling unit (km/mile) 0 invalid; 1: km kilometers; 2: miles; */
@property(nonatomic, readwrite) uint32_t cyclingUnit;

/** 1bytes walking or running unit (km/mile) setting 0 is invalid; 1: km kilometers; 2: miles; */
@property(nonatomic, readwrite) uint32_t walkingRunningUnit;

/** 1bytes stride unit */
@property(nonatomic, readwrite) uint32_t strideUnit;

/** 1bytes height unit 0x00: invalid 0x01, centimeters cm 0x02, inches ft */
@property(nonatomic, readwrite) uint32_t heightUnit;

/** 1bytes altitude unit 0x00: invalid 0x01, meter m 0x02, feet ft */
@property(nonatomic, readwrite) uint32_t altitudeUnit;

/** 1bytes wind speed unit 0x00: invalid 0x01, meter/second (m/s) 0x02, kilometers/hour (km/h) */
@property(nonatomic, readwrite) uint32_t windSpeedUnit;

/** 1bytes visibility unit 0x00: invalid 0x01, meter (m) 0x02, kilometers (km) 0x03, miles (mi) */
@property(nonatomic, readwrite) uint32_t visibilityUnit;

@end

#pragma mark - protocol_goal_setting

typedef GPB_ENUM(protocol_goal_setting_FieldNumber) {
  protocol_goal_setting_FieldNumber_ExerciseMin = 1,
  protocol_goal_setting_FieldNumber_StandingHour = 2,
  protocol_goal_setting_FieldNumber_Kcal = 3,
  protocol_goal_setting_FieldNumber_Steps = 4,
  protocol_goal_setting_FieldNumber_Distance = 5,
  protocol_goal_setting_FieldNumber_WorkoutDay = 6,
  protocol_goal_setting_FieldNumber_NotifySwitchFlag = 7,
  protocol_goal_setting_FieldNumber_NotifyFlag = 8,
};

GPB_FINAL @interface protocol_goal_setting : GPBMessage

/** 1bytes exercise duration target */
@property(nonatomic, readwrite) uint32_t exerciseMin;

/** 1bytes standing hour target */
@property(nonatomic, readwrite) uint32_t standingHour;

/** 2bytes calorie target */
@property(nonatomic, readwrite) uint32_t kcal;

/** 4bytes step target */
@property(nonatomic, readwrite) uint32_t steps;

/** 4bytes distance to target in meters */
@property(nonatomic, readwrite) uint32_t distance;

/** 1bytes exercise day target */
@property(nonatomic, readwrite) uint32_t workoutDay;

/** 1bytes target reminder switch true to turn on, false to turn off */
@property(nonatomic, readwrite) BOOL notifySwitchFlag;

/** 1bytes notification type */
@property(nonatomic, readwrite) enum notify_type notifyFlag;

@end

/**
 * Fetches the raw value of a @c protocol_goal_setting's @c notifyFlag property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_goal_setting_NotifyFlag_RawValue(protocol_goal_setting *message);
/**
 * Sets the raw value of an @c protocol_goal_setting's @c notifyFlag property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_goal_setting_NotifyFlag_RawValue(protocol_goal_setting *message, int32_t value);

#pragma mark - protocol_user_info_operate

typedef GPB_ENUM(protocol_user_info_operate_FieldNumber) {
  protocol_user_info_operate_FieldNumber_Operate = 1,
  protocol_user_info_operate_FieldNumber_PersonalInfo = 2,
  protocol_user_info_operate_FieldNumber_Preferences = 3,
  protocol_user_info_operate_FieldNumber_GoalSetting = 4,
};

GPB_FINAL @interface protocol_user_info_operate : GPBMessage

/** Operation type 0: Invalid operation 1: Query 2: Setting */
@property(nonatomic, readwrite) enum operate_type operate;

@property(nonatomic, readwrite, strong, null_resettable) protocol_personal_info *personalInfo;
/** Test to see if @c personalInfo has been set. */
@property(nonatomic, readwrite) BOOL hasPersonalInfo;

@property(nonatomic, readwrite, strong, null_resettable) protocol_perferences *preferences;
/** Test to see if @c preferences has been set. */
@property(nonatomic, readwrite) BOOL hasPreferences;

@property(nonatomic, readwrite, strong, null_resettable) protocol_goal_setting *goalSetting;
/** Test to see if @c goalSetting has been set. */
@property(nonatomic, readwrite) BOOL hasGoalSetting;

@end

/**
 * Fetches the raw value of a @c protocol_user_info_operate's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_user_info_operate_Operate_RawValue(protocol_user_info_operate *message);
/**
 * Sets the raw value of an @c protocol_user_info_operate's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_user_info_operate_Operate_RawValue(protocol_user_info_operate *message, int32_t value);

#pragma mark - protocol_user_info_inquire_reply

typedef GPB_ENUM(protocol_user_info_inquire_reply_FieldNumber) {
  protocol_user_info_inquire_reply_FieldNumber_FuncTable = 1,
  protocol_user_info_inquire_reply_FieldNumber_Operate = 2,
  protocol_user_info_inquire_reply_FieldNumber_PersonalInfo = 3,
  protocol_user_info_inquire_reply_FieldNumber_Preferences = 4,
  protocol_user_info_inquire_reply_FieldNumber_GoalSetting = 5,
};

GPB_FINAL @interface protocol_user_info_inquire_reply : GPBMessage

/** 1bytes function table */
@property(nonatomic, readwrite) uint32_t funcTable;

/** Operation type 0: Invalid operation 1: Query 2: Setting */
@property(nonatomic, readwrite) enum operate_type operate;

@property(nonatomic, readwrite, strong, null_resettable) protocol_personal_info *personalInfo;
/** Test to see if @c personalInfo has been set. */
@property(nonatomic, readwrite) BOOL hasPersonalInfo;

@property(nonatomic, readwrite, strong, null_resettable) protocol_perferences *preferences;
/** Test to see if @c preferences has been set. */
@property(nonatomic, readwrite) BOOL hasPreferences;

@property(nonatomic, readwrite, strong, null_resettable) protocol_goal_setting *goalSetting;
/** Test to see if @c goalSetting has been set. */
@property(nonatomic, readwrite) BOOL hasGoalSetting;

@end

/**
 * Fetches the raw value of a @c protocol_user_info_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_user_info_inquire_reply_Operate_RawValue(protocol_user_info_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_user_info_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_user_info_inquire_reply_Operate_RawValue(protocol_user_info_inquire_reply *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
