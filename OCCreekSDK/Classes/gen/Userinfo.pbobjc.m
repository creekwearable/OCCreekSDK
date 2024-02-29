// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: userinfo.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import "Userinfo.pbobjc.h"
#import "Enums.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(protocol_goal_setting);
GPBObjCClassDeclaration(protocol_perferences);
GPBObjCClassDeclaration(protocol_personal_info);

#pragma mark - UserinfoRoot

@implementation UserinfoRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - UserinfoRoot_FileDescriptor

static GPBFileDescriptor *UserinfoRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@""
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - protocol_personal_info

@implementation protocol_personal_info

@dynamic height;
@dynamic weight;
@dynamic gender;
@dynamic year;
@dynamic month;
@dynamic day;

typedef struct protocol_personal_info__storage_ {
  uint32_t _has_storage_[1];
  uint32_t height;
  uint32_t weight;
  gender_type gender;
  uint32_t year;
  uint32_t month;
  uint32_t day;
} protocol_personal_info__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "height",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_personal_info_FieldNumber_Height,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_personal_info__storage_, height),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "weight",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_personal_info_FieldNumber_Weight,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_personal_info__storage_, weight),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "gender",
        .dataTypeSpecific.enumDescFunc = gender_type_EnumDescriptor,
        .number = protocol_personal_info_FieldNumber_Gender,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_personal_info__storage_, gender),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "year",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_personal_info_FieldNumber_Year,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_personal_info__storage_, year),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "month",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_personal_info_FieldNumber_Month,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_personal_info__storage_, month),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "day",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_personal_info_FieldNumber_Day,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_personal_info__storage_, day),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_personal_info class]
                                     rootClass:[UserinfoRoot class]
                                          file:UserinfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_personal_info__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_personal_info_Gender_RawValue(protocol_personal_info *message) {
  GPBDescriptor *descriptor = [protocol_personal_info descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_personal_info_FieldNumber_Gender];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_personal_info_Gender_RawValue(protocol_personal_info *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_personal_info descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_personal_info_FieldNumber_Gender];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_perferences

@implementation protocol_perferences

@dynamic distUnit;
@dynamic weightUnit;
@dynamic airTempUnit;
@dynamic skinTempUnit;
@dynamic is12HourFormat;
@dynamic weekStartDay;
@dynamic calorieUnit;
@dynamic swimPoolUnit;
@dynamic cyclingUnit;
@dynamic walkingRunningUnit;
@dynamic strideUnit;
@dynamic heightUnit;
@dynamic altitudeUnit;

typedef struct protocol_perferences__storage_ {
  uint32_t _has_storage_[1];
  uint32_t distUnit;
  uint32_t weightUnit;
  uint32_t airTempUnit;
  uint32_t skinTempUnit;
  uint32_t is12HourFormat;
  uint32_t weekStartDay;
  uint32_t calorieUnit;
  uint32_t swimPoolUnit;
  uint32_t cyclingUnit;
  uint32_t walkingRunningUnit;
  uint32_t strideUnit;
  uint32_t heightUnit;
  uint32_t altitudeUnit;
} protocol_perferences__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "distUnit",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_DistUnit,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, distUnit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "weightUnit",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_WeightUnit,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, weightUnit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "airTempUnit",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_AirTempUnit,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, airTempUnit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "skinTempUnit",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_SkinTempUnit,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, skinTempUnit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "is12HourFormat",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_Is12HourFormat,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, is12HourFormat),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "weekStartDay",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_WeekStartDay,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, weekStartDay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "calorieUnit",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_CalorieUnit,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, calorieUnit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "swimPoolUnit",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_SwimPoolUnit,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, swimPoolUnit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "cyclingUnit",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_CyclingUnit,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, cyclingUnit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "walkingRunningUnit",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_WalkingRunningUnit,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, walkingRunningUnit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "strideUnit",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_StrideUnit,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, strideUnit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "heightUnit",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_HeightUnit,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, heightUnit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "altitudeUnit",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_perferences_FieldNumber_AltitudeUnit,
        .hasIndex = 12,
        .offset = (uint32_t)offsetof(protocol_perferences__storage_, altitudeUnit),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_perferences class]
                                     rootClass:[UserinfoRoot class]
                                          file:UserinfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_perferences__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\005\002\202$\246\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - protocol_goal_setting

@implementation protocol_goal_setting

@dynamic exerciseMin;
@dynamic standingHour;
@dynamic kcal;
@dynamic steps;
@dynamic distance;
@dynamic workoutDay;
@dynamic notifySwitchFlag;
@dynamic notifyFlag;

typedef struct protocol_goal_setting__storage_ {
  uint32_t _has_storage_[1];
  uint32_t exerciseMin;
  uint32_t standingHour;
  uint32_t kcal;
  uint32_t steps;
  uint32_t distance;
  uint32_t workoutDay;
  notify_type notifyFlag;
} protocol_goal_setting__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "exerciseMin",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_goal_setting_FieldNumber_ExerciseMin,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_goal_setting__storage_, exerciseMin),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "standingHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_goal_setting_FieldNumber_StandingHour,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_goal_setting__storage_, standingHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "kcal",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_goal_setting_FieldNumber_Kcal,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_goal_setting__storage_, kcal),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "steps",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_goal_setting_FieldNumber_Steps,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_goal_setting__storage_, steps),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "distance",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_goal_setting_FieldNumber_Distance,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_goal_setting__storage_, distance),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "workoutDay",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_goal_setting_FieldNumber_WorkoutDay,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_goal_setting__storage_, workoutDay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "notifySwitchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_goal_setting_FieldNumber_NotifySwitchFlag,
        .hasIndex = 6,
        .offset = 7,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "notifyFlag",
        .dataTypeSpecific.enumDescFunc = notify_type_EnumDescriptor,
        .number = protocol_goal_setting_FieldNumber_NotifyFlag,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(protocol_goal_setting__storage_, notifyFlag),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_goal_setting class]
                                     rootClass:[UserinfoRoot class]
                                          file:UserinfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_goal_setting__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_goal_setting_NotifyFlag_RawValue(protocol_goal_setting *message) {
  GPBDescriptor *descriptor = [protocol_goal_setting descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_goal_setting_FieldNumber_NotifyFlag];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_goal_setting_NotifyFlag_RawValue(protocol_goal_setting *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_goal_setting descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_goal_setting_FieldNumber_NotifyFlag];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_user_info_operate

@implementation protocol_user_info_operate

@dynamic operate;
@dynamic hasPersonalInfo, personalInfo;
@dynamic hasPreferences, preferences;
@dynamic hasGoalSetting, goalSetting;

typedef struct protocol_user_info_operate__storage_ {
  uint32_t _has_storage_[1];
  operate_type operate;
  protocol_personal_info *personalInfo;
  protocol_perferences *preferences;
  protocol_goal_setting *goalSetting;
} protocol_user_info_operate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_user_info_operate_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_user_info_operate__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "personalInfo",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_personal_info),
        .number = protocol_user_info_operate_FieldNumber_PersonalInfo,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_user_info_operate__storage_, personalInfo),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "preferences",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_perferences),
        .number = protocol_user_info_operate_FieldNumber_Preferences,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_user_info_operate__storage_, preferences),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "goalSetting",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_goal_setting),
        .number = protocol_user_info_operate_FieldNumber_GoalSetting,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_user_info_operate__storage_, goalSetting),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_user_info_operate class]
                                     rootClass:[UserinfoRoot class]
                                          file:UserinfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_user_info_operate__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_user_info_operate_Operate_RawValue(protocol_user_info_operate *message) {
  GPBDescriptor *descriptor = [protocol_user_info_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_user_info_operate_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_user_info_operate_Operate_RawValue(protocol_user_info_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_user_info_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_user_info_operate_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_user_info_inquire_reply

@implementation protocol_user_info_inquire_reply

@dynamic funcTable;
@dynamic operate;
@dynamic hasPersonalInfo, personalInfo;
@dynamic hasPreferences, preferences;
@dynamic hasGoalSetting, goalSetting;

typedef struct protocol_user_info_inquire_reply__storage_ {
  uint32_t _has_storage_[1];
  uint32_t funcTable;
  operate_type operate;
  protocol_personal_info *personalInfo;
  protocol_perferences *preferences;
  protocol_goal_setting *goalSetting;
} protocol_user_info_inquire_reply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "funcTable",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_user_info_inquire_reply_FieldNumber_FuncTable,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_user_info_inquire_reply__storage_, funcTable),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_user_info_inquire_reply_FieldNumber_Operate,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_user_info_inquire_reply__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "personalInfo",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_personal_info),
        .number = protocol_user_info_inquire_reply_FieldNumber_PersonalInfo,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_user_info_inquire_reply__storage_, personalInfo),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "preferences",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_perferences),
        .number = protocol_user_info_inquire_reply_FieldNumber_Preferences,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_user_info_inquire_reply__storage_, preferences),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "goalSetting",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_goal_setting),
        .number = protocol_user_info_inquire_reply_FieldNumber_GoalSetting,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_user_info_inquire_reply__storage_, goalSetting),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_user_info_inquire_reply class]
                                     rootClass:[UserinfoRoot class]
                                          file:UserinfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_user_info_inquire_reply__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_user_info_inquire_reply_Operate_RawValue(protocol_user_info_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_user_info_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_user_info_inquire_reply_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_user_info_inquire_reply_Operate_RawValue(protocol_user_info_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_user_info_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_user_info_inquire_reply_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)