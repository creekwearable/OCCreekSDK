// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: monitor.proto

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

#import "Monitor.pbobjc.h"
#import "Enums.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(protocol_health_monitor_auto_adjust);
GPBObjCClassDeclaration(protocol_heart_monitor_notify);

#pragma mark - MonitorRoot

@implementation MonitorRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - MonitorRoot_FileDescriptor

static GPBFileDescriptor *MonitorRoot_FileDescriptor(void) {
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

#pragma mark - protocol_health_monitor_auto_adjust

@implementation protocol_health_monitor_auto_adjust

@dynamic switchFlag;
@dynamic adjustMode;
@dynamic startHour;
@dynamic startMinute;
@dynamic endHour;
@dynamic endMinute;

typedef struct protocol_health_monitor_auto_adjust__storage_ {
  uint32_t _has_storage_[1];
  health_monitor_mode adjustMode;
  uint32_t startHour;
  uint32_t startMinute;
  uint32_t endHour;
  uint32_t endMinute;
} protocol_health_monitor_auto_adjust__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "switchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_health_monitor_auto_adjust_FieldNumber_SwitchFlag,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "adjustMode",
        .dataTypeSpecific.enumDescFunc = health_monitor_mode_EnumDescriptor,
        .number = protocol_health_monitor_auto_adjust_FieldNumber_AdjustMode,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_health_monitor_auto_adjust__storage_, adjustMode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "startHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_health_monitor_auto_adjust_FieldNumber_StartHour,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_health_monitor_auto_adjust__storage_, startHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "startMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_health_monitor_auto_adjust_FieldNumber_StartMinute,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_health_monitor_auto_adjust__storage_, startMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_health_monitor_auto_adjust_FieldNumber_EndHour,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_health_monitor_auto_adjust__storage_, endHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_health_monitor_auto_adjust_FieldNumber_EndMinute,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(protocol_health_monitor_auto_adjust__storage_, endMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_health_monitor_auto_adjust class]
                                     rootClass:[MonitorRoot class]
                                          file:MonitorRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_health_monitor_auto_adjust__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_health_monitor_auto_adjust_AdjustMode_RawValue(protocol_health_monitor_auto_adjust *message) {
  GPBDescriptor *descriptor = [protocol_health_monitor_auto_adjust descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_auto_adjust_FieldNumber_AdjustMode];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_health_monitor_auto_adjust_AdjustMode_RawValue(protocol_health_monitor_auto_adjust *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_health_monitor_auto_adjust descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_auto_adjust_FieldNumber_AdjustMode];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_heart_monitor_notify

@implementation protocol_heart_monitor_notify

@dynamic notifyFlag;
@dynamic highRemindSwitch;
@dynamic lowRemindSwitch;
@dynamic highThresholdValue;
@dynamic lowThresholdValue;
@dynamic interval;
@dynamic repeatArray, repeatArray_Count;
@dynamic startHour;
@dynamic startMinute;
@dynamic endHour;
@dynamic endMinute;

typedef struct protocol_heart_monitor_notify__storage_ {
  uint32_t _has_storage_[1];
  notify_type notifyFlag;
  uint32_t highThresholdValue;
  uint32_t lowThresholdValue;
  uint32_t interval;
  uint32_t startHour;
  uint32_t startMinute;
  uint32_t endHour;
  uint32_t endMinute;
  GPBBoolArray *repeatArray;
} protocol_heart_monitor_notify__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "notifyFlag",
        .dataTypeSpecific.enumDescFunc = notify_type_EnumDescriptor,
        .number = protocol_heart_monitor_notify_FieldNumber_NotifyFlag,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_heart_monitor_notify__storage_, notifyFlag),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "highRemindSwitch",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_heart_monitor_notify_FieldNumber_HighRemindSwitch,
        .hasIndex = 1,
        .offset = 2,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "lowRemindSwitch",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_heart_monitor_notify_FieldNumber_LowRemindSwitch,
        .hasIndex = 3,
        .offset = 4,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "highThresholdValue",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_heart_monitor_notify_FieldNumber_HighThresholdValue,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_heart_monitor_notify__storage_, highThresholdValue),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "lowThresholdValue",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_heart_monitor_notify_FieldNumber_LowThresholdValue,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(protocol_heart_monitor_notify__storage_, lowThresholdValue),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "interval",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_heart_monitor_notify_FieldNumber_Interval,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(protocol_heart_monitor_notify__storage_, interval),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "repeatArray",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_heart_monitor_notify_FieldNumber_RepeatArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_heart_monitor_notify__storage_, repeatArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "startHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_heart_monitor_notify_FieldNumber_StartHour,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(protocol_heart_monitor_notify__storage_, startHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "startMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_heart_monitor_notify_FieldNumber_StartMinute,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(protocol_heart_monitor_notify__storage_, startMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_heart_monitor_notify_FieldNumber_EndHour,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(protocol_heart_monitor_notify__storage_, endHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_heart_monitor_notify_FieldNumber_EndMinute,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(protocol_heart_monitor_notify__storage_, endMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_heart_monitor_notify class]
                                     rootClass:[MonitorRoot class]
                                          file:MonitorRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_heart_monitor_notify__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_heart_monitor_notify_NotifyFlag_RawValue(protocol_heart_monitor_notify *message) {
  GPBDescriptor *descriptor = [protocol_heart_monitor_notify descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_heart_monitor_notify_FieldNumber_NotifyFlag];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_heart_monitor_notify_NotifyFlag_RawValue(protocol_heart_monitor_notify *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_heart_monitor_notify descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_heart_monitor_notify_FieldNumber_NotifyFlag];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_health_monitor_operate

@implementation protocol_health_monitor_operate

@dynamic operate;
@dynamic healthType;
@dynamic defaultMode;
@dynamic measurementInterval;
@dynamic hasModeAutoAdjust, modeAutoAdjust;
@dynamic hasNotifySetting, notifySetting;

typedef struct protocol_health_monitor_operate__storage_ {
  uint32_t _has_storage_[1];
  operate_type operate;
  health_type healthType;
  health_monitor_mode defaultMode;
  uint32_t measurementInterval;
  protocol_health_monitor_auto_adjust *modeAutoAdjust;
  protocol_heart_monitor_notify *notifySetting;
} protocol_health_monitor_operate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_health_monitor_operate_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_health_monitor_operate__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "healthType",
        .dataTypeSpecific.enumDescFunc = health_type_EnumDescriptor,
        .number = protocol_health_monitor_operate_FieldNumber_HealthType,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_health_monitor_operate__storage_, healthType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "defaultMode",
        .dataTypeSpecific.enumDescFunc = health_monitor_mode_EnumDescriptor,
        .number = protocol_health_monitor_operate_FieldNumber_DefaultMode,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_health_monitor_operate__storage_, defaultMode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "measurementInterval",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_health_monitor_operate_FieldNumber_MeasurementInterval,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_health_monitor_operate__storage_, measurementInterval),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "modeAutoAdjust",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_health_monitor_auto_adjust),
        .number = protocol_health_monitor_operate_FieldNumber_ModeAutoAdjust,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_health_monitor_operate__storage_, modeAutoAdjust),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "notifySetting",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_heart_monitor_notify),
        .number = protocol_health_monitor_operate_FieldNumber_NotifySetting,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_health_monitor_operate__storage_, notifySetting),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_health_monitor_operate class]
                                     rootClass:[MonitorRoot class]
                                          file:MonitorRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_health_monitor_operate__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_health_monitor_operate_Operate_RawValue(protocol_health_monitor_operate *message) {
  GPBDescriptor *descriptor = [protocol_health_monitor_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_operate_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_health_monitor_operate_Operate_RawValue(protocol_health_monitor_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_health_monitor_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_operate_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_health_monitor_operate_HealthType_RawValue(protocol_health_monitor_operate *message) {
  GPBDescriptor *descriptor = [protocol_health_monitor_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_operate_FieldNumber_HealthType];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_health_monitor_operate_HealthType_RawValue(protocol_health_monitor_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_health_monitor_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_operate_FieldNumber_HealthType];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_health_monitor_operate_DefaultMode_RawValue(protocol_health_monitor_operate *message) {
  GPBDescriptor *descriptor = [protocol_health_monitor_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_operate_FieldNumber_DefaultMode];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_health_monitor_operate_DefaultMode_RawValue(protocol_health_monitor_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_health_monitor_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_operate_FieldNumber_DefaultMode];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_health_monitor_inquire_reply

@implementation protocol_health_monitor_inquire_reply

@dynamic funcTable;
@dynamic operate;
@dynamic healthType;
@dynamic defaultMode;
@dynamic measurementInterval;
@dynamic hasModeAutoAdjust, modeAutoAdjust;
@dynamic hasNotifySetting, notifySetting;

typedef struct protocol_health_monitor_inquire_reply__storage_ {
  uint32_t _has_storage_[1];
  uint32_t funcTable;
  operate_type operate;
  health_type healthType;
  health_monitor_mode defaultMode;
  uint32_t measurementInterval;
  protocol_health_monitor_auto_adjust *modeAutoAdjust;
  protocol_heart_monitor_notify *notifySetting;
} protocol_health_monitor_inquire_reply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "funcTable",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_health_monitor_inquire_reply_FieldNumber_FuncTable,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_health_monitor_inquire_reply__storage_, funcTable),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_health_monitor_inquire_reply_FieldNumber_Operate,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_health_monitor_inquire_reply__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "healthType",
        .dataTypeSpecific.enumDescFunc = health_type_EnumDescriptor,
        .number = protocol_health_monitor_inquire_reply_FieldNumber_HealthType,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_health_monitor_inquire_reply__storage_, healthType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "defaultMode",
        .dataTypeSpecific.enumDescFunc = health_monitor_mode_EnumDescriptor,
        .number = protocol_health_monitor_inquire_reply_FieldNumber_DefaultMode,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_health_monitor_inquire_reply__storage_, defaultMode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "measurementInterval",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_health_monitor_inquire_reply_FieldNumber_MeasurementInterval,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_health_monitor_inquire_reply__storage_, measurementInterval),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "modeAutoAdjust",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_health_monitor_auto_adjust),
        .number = protocol_health_monitor_inquire_reply_FieldNumber_ModeAutoAdjust,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_health_monitor_inquire_reply__storage_, modeAutoAdjust),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "notifySetting",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_heart_monitor_notify),
        .number = protocol_health_monitor_inquire_reply_FieldNumber_NotifySetting,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(protocol_health_monitor_inquire_reply__storage_, notifySetting),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_health_monitor_inquire_reply class]
                                     rootClass:[MonitorRoot class]
                                          file:MonitorRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_health_monitor_inquire_reply__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_health_monitor_inquire_reply_Operate_RawValue(protocol_health_monitor_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_health_monitor_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_inquire_reply_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_health_monitor_inquire_reply_Operate_RawValue(protocol_health_monitor_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_health_monitor_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_inquire_reply_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_health_monitor_inquire_reply_HealthType_RawValue(protocol_health_monitor_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_health_monitor_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_inquire_reply_FieldNumber_HealthType];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_health_monitor_inquire_reply_HealthType_RawValue(protocol_health_monitor_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_health_monitor_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_inquire_reply_FieldNumber_HealthType];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_health_monitor_inquire_reply_DefaultMode_RawValue(protocol_health_monitor_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_health_monitor_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_inquire_reply_FieldNumber_DefaultMode];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_health_monitor_inquire_reply_DefaultMode_RawValue(protocol_health_monitor_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_health_monitor_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_health_monitor_inquire_reply_FieldNumber_DefaultMode];
  GPBSetMessageRawEnumField(message, field, value);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)