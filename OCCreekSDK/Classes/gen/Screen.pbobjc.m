// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: screen.proto

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

#import "Screen.pbobjc.h"
#import "Enums.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(protocol_screen_aod_time_setting);
GPBObjCClassDeclaration(protocol_screen_night_auto_adjust);

#pragma mark - ScreenRoot

@implementation ScreenRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - ScreenRoot_FileDescriptor

static GPBFileDescriptor *ScreenRoot_FileDescriptor(void) {
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

#pragma mark - protocol_screen_night_auto_adjust

@implementation protocol_screen_night_auto_adjust

@dynamic switchFlag;
@dynamic startHour;
@dynamic startMinute;
@dynamic endHour;
@dynamic endMinute;
@dynamic nightLevel;

typedef struct protocol_screen_night_auto_adjust__storage_ {
  uint32_t _has_storage_[1];
  uint32_t startHour;
  uint32_t startMinute;
  uint32_t endHour;
  uint32_t endMinute;
  uint32_t nightLevel;
} protocol_screen_night_auto_adjust__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "switchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_night_auto_adjust_FieldNumber_SwitchFlag,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "startHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_night_auto_adjust_FieldNumber_StartHour,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_screen_night_auto_adjust__storage_, startHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "startMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_night_auto_adjust_FieldNumber_StartMinute,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_screen_night_auto_adjust__storage_, startMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_night_auto_adjust_FieldNumber_EndHour,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_screen_night_auto_adjust__storage_, endHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_night_auto_adjust_FieldNumber_EndMinute,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_screen_night_auto_adjust__storage_, endMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "nightLevel",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_night_auto_adjust_FieldNumber_NightLevel,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(protocol_screen_night_auto_adjust__storage_, nightLevel),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_screen_night_auto_adjust class]
                                     rootClass:[ScreenRoot class]
                                          file:ScreenRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_screen_night_auto_adjust__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - protocol_screen_aod_time_setting

@implementation protocol_screen_aod_time_setting

@dynamic mode;
@dynamic startHour;
@dynamic startMinute;
@dynamic endHour;
@dynamic endMinute;

typedef struct protocol_screen_aod_time_setting__storage_ {
  uint32_t _has_storage_[1];
  aod_mode mode;
  uint32_t startHour;
  uint32_t startMinute;
  uint32_t endHour;
  uint32_t endMinute;
} protocol_screen_aod_time_setting__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "mode",
        .dataTypeSpecific.enumDescFunc = aod_mode_EnumDescriptor,
        .number = protocol_screen_aod_time_setting_FieldNumber_Mode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_screen_aod_time_setting__storage_, mode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "startHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_aod_time_setting_FieldNumber_StartHour,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_screen_aod_time_setting__storage_, startHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "startMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_aod_time_setting_FieldNumber_StartMinute,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_screen_aod_time_setting__storage_, startMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_aod_time_setting_FieldNumber_EndHour,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_screen_aod_time_setting__storage_, endHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_aod_time_setting_FieldNumber_EndMinute,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_screen_aod_time_setting__storage_, endMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_screen_aod_time_setting class]
                                     rootClass:[ScreenRoot class]
                                          file:ScreenRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_screen_aod_time_setting__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_screen_aod_time_setting_Mode_RawValue(protocol_screen_aod_time_setting *message) {
  GPBDescriptor *descriptor = [protocol_screen_aod_time_setting descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_screen_aod_time_setting_FieldNumber_Mode];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_screen_aod_time_setting_Mode_RawValue(protocol_screen_aod_time_setting *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_screen_aod_time_setting descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_screen_aod_time_setting_FieldNumber_Mode];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_screen_brightness_operate

@implementation protocol_screen_brightness_operate

@dynamic operate;
@dynamic level;
@dynamic showInterval;
@dynamic hasNightAutoAdjust, nightAutoAdjust;
@dynamic aodSwitchFlag;
@dynamic raiseWristSwitchFlag;
@dynamic hasAodTimeSetting, aodTimeSetting;
@dynamic levelFlag;

typedef struct protocol_screen_brightness_operate__storage_ {
  uint32_t _has_storage_[1];
  operate_type operate;
  uint32_t level;
  uint32_t showInterval;
  protocol_screen_night_auto_adjust *nightAutoAdjust;
  protocol_screen_aod_time_setting *aodTimeSetting;
} protocol_screen_brightness_operate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_screen_brightness_operate_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_screen_brightness_operate__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "level",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_brightness_operate_FieldNumber_Level,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_screen_brightness_operate__storage_, level),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "showInterval",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_brightness_operate_FieldNumber_ShowInterval,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_screen_brightness_operate__storage_, showInterval),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "nightAutoAdjust",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_screen_night_auto_adjust),
        .number = protocol_screen_brightness_operate_FieldNumber_NightAutoAdjust,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_screen_brightness_operate__storage_, nightAutoAdjust),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "aodSwitchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_brightness_operate_FieldNumber_AodSwitchFlag,
        .hasIndex = 4,
        .offset = 5,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "raiseWristSwitchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_brightness_operate_FieldNumber_RaiseWristSwitchFlag,
        .hasIndex = 6,
        .offset = 7,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "aodTimeSetting",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_screen_aod_time_setting),
        .number = protocol_screen_brightness_operate_FieldNumber_AodTimeSetting,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(protocol_screen_brightness_operate__storage_, aodTimeSetting),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "levelFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_brightness_operate_FieldNumber_LevelFlag,
        .hasIndex = 9,
        .offset = 10,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_screen_brightness_operate class]
                                     rootClass:[ScreenRoot class]
                                          file:ScreenRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_screen_brightness_operate__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_screen_brightness_operate_Operate_RawValue(protocol_screen_brightness_operate *message) {
  GPBDescriptor *descriptor = [protocol_screen_brightness_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_screen_brightness_operate_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_screen_brightness_operate_Operate_RawValue(protocol_screen_brightness_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_screen_brightness_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_screen_brightness_operate_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_screen_brightness_inquire_reply

@implementation protocol_screen_brightness_inquire_reply

@dynamic funcTable;
@dynamic operate;
@dynamic level;
@dynamic showInterval;
@dynamic hasNightAutoAdjust, nightAutoAdjust;
@dynamic aodSwitchFlag;
@dynamic raiseWristSwitchFlag;
@dynamic hasAodTimeSetting, aodTimeSetting;

typedef struct protocol_screen_brightness_inquire_reply__storage_ {
  uint32_t _has_storage_[1];
  uint32_t funcTable;
  operate_type operate;
  uint32_t level;
  uint32_t showInterval;
  protocol_screen_night_auto_adjust *nightAutoAdjust;
  protocol_screen_aod_time_setting *aodTimeSetting;
} protocol_screen_brightness_inquire_reply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "funcTable",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_brightness_inquire_reply_FieldNumber_FuncTable,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_screen_brightness_inquire_reply__storage_, funcTable),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_screen_brightness_inquire_reply_FieldNumber_Operate,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_screen_brightness_inquire_reply__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "level",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_brightness_inquire_reply_FieldNumber_Level,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_screen_brightness_inquire_reply__storage_, level),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "showInterval",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_brightness_inquire_reply_FieldNumber_ShowInterval,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_screen_brightness_inquire_reply__storage_, showInterval),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "nightAutoAdjust",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_screen_night_auto_adjust),
        .number = protocol_screen_brightness_inquire_reply_FieldNumber_NightAutoAdjust,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_screen_brightness_inquire_reply__storage_, nightAutoAdjust),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "aodSwitchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_brightness_inquire_reply_FieldNumber_AodSwitchFlag,
        .hasIndex = 5,
        .offset = 6,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "raiseWristSwitchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_screen_brightness_inquire_reply_FieldNumber_RaiseWristSwitchFlag,
        .hasIndex = 7,
        .offset = 8,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "aodTimeSetting",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_screen_aod_time_setting),
        .number = protocol_screen_brightness_inquire_reply_FieldNumber_AodTimeSetting,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(protocol_screen_brightness_inquire_reply__storage_, aodTimeSetting),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_screen_brightness_inquire_reply class]
                                     rootClass:[ScreenRoot class]
                                          file:ScreenRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_screen_brightness_inquire_reply__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_screen_brightness_inquire_reply_Operate_RawValue(protocol_screen_brightness_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_screen_brightness_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_screen_brightness_inquire_reply_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_screen_brightness_inquire_reply_Operate_RawValue(protocol_screen_brightness_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_screen_brightness_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_screen_brightness_inquire_reply_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)