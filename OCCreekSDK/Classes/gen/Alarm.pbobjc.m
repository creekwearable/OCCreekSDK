// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: alarm.proto

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

#import "Alarm.pbobjc.h"
#import "Enums.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(protocol_set_alarm_item);

#pragma mark - AlarmRoot

@implementation AlarmRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - AlarmRoot_FileDescriptor

static GPBFileDescriptor *AlarmRoot_FileDescriptor(void) {
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

#pragma mark - protocol_set_alarm_item

@implementation protocol_set_alarm_item

@dynamic alarmId;
@dynamic dispStatus;
@dynamic type;
@dynamic hour;
@dynamic minute;
@dynamic switchFlag;
@dynamic repeatArray, repeatArray_Count;
@dynamic laterRemindSwitchFlag;
@dynamic laterRemindRepeatTimes;
@dynamic laterRemindMin;
@dynamic vibrateOnOff;
@dynamic name;

typedef struct protocol_set_alarm_item__storage_ {
  uint32_t _has_storage_[1];
  uint32_t alarmId;
  disp_status dispStatus;
  alarm_type type;
  uint32_t hour;
  uint32_t minute;
  uint32_t laterRemindRepeatTimes;
  uint32_t laterRemindMin;
  GPBBoolArray *repeatArray;
  NSData *name;
} protocol_set_alarm_item__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "alarmId",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_alarm_item_FieldNumber_AlarmId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_set_alarm_item__storage_, alarmId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "dispStatus",
        .dataTypeSpecific.enumDescFunc = disp_status_EnumDescriptor,
        .number = protocol_set_alarm_item_FieldNumber_DispStatus,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_set_alarm_item__storage_, dispStatus),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "type",
        .dataTypeSpecific.enumDescFunc = alarm_type_EnumDescriptor,
        .number = protocol_set_alarm_item_FieldNumber_Type,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_set_alarm_item__storage_, type),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "hour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_alarm_item_FieldNumber_Hour,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_set_alarm_item__storage_, hour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "minute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_alarm_item_FieldNumber_Minute,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_set_alarm_item__storage_, minute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "switchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_alarm_item_FieldNumber_SwitchFlag,
        .hasIndex = 5,
        .offset = 6,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "repeatArray",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_alarm_item_FieldNumber_RepeatArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_set_alarm_item__storage_, repeatArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "laterRemindSwitchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_alarm_item_FieldNumber_LaterRemindSwitchFlag,
        .hasIndex = 7,
        .offset = 8,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "laterRemindRepeatTimes",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_alarm_item_FieldNumber_LaterRemindRepeatTimes,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(protocol_set_alarm_item__storage_, laterRemindRepeatTimes),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "laterRemindMin",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_alarm_item_FieldNumber_LaterRemindMin,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(protocol_set_alarm_item__storage_, laterRemindMin),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "vibrateOnOff",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_alarm_item_FieldNumber_VibrateOnOff,
        .hasIndex = 11,
        .offset = 12,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_alarm_item_FieldNumber_Name,
        .hasIndex = 13,
        .offset = (uint32_t)offsetof(protocol_set_alarm_item__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_set_alarm_item class]
                                     rootClass:[AlarmRoot class]
                                          file:AlarmRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_set_alarm_item__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_set_alarm_item_DispStatus_RawValue(protocol_set_alarm_item *message) {
  GPBDescriptor *descriptor = [protocol_set_alarm_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_set_alarm_item_FieldNumber_DispStatus];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_set_alarm_item_DispStatus_RawValue(protocol_set_alarm_item *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_set_alarm_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_set_alarm_item_FieldNumber_DispStatus];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_set_alarm_item_Type_RawValue(protocol_set_alarm_item *message) {
  GPBDescriptor *descriptor = [protocol_set_alarm_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_set_alarm_item_FieldNumber_Type];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_set_alarm_item_Type_RawValue(protocol_set_alarm_item *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_set_alarm_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_set_alarm_item_FieldNumber_Type];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_alarm_operate

@implementation protocol_alarm_operate

@dynamic operate;
@dynamic num;
@dynamic alarmItemArray, alarmItemArray_Count;

typedef struct protocol_alarm_operate__storage_ {
  uint32_t _has_storage_[1];
  operate_type operate;
  uint32_t num;
  NSMutableArray *alarmItemArray;
} protocol_alarm_operate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_alarm_operate_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_alarm_operate__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "num",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_alarm_operate_FieldNumber_Num,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_alarm_operate__storage_, num),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "alarmItemArray",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_set_alarm_item),
        .number = protocol_alarm_operate_FieldNumber_AlarmItemArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_alarm_operate__storage_, alarmItemArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_alarm_operate class]
                                     rootClass:[AlarmRoot class]
                                          file:AlarmRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_alarm_operate__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_alarm_operate_Operate_RawValue(protocol_alarm_operate *message) {
  GPBDescriptor *descriptor = [protocol_alarm_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_alarm_operate_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_alarm_operate_Operate_RawValue(protocol_alarm_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_alarm_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_alarm_operate_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_alarm_inquire_reply

@implementation protocol_alarm_inquire_reply

@dynamic funcTable;
@dynamic alarmSupportMax;
@dynamic operate;
@dynamic num;
@dynamic alarmItemArray, alarmItemArray_Count;

typedef struct protocol_alarm_inquire_reply__storage_ {
  uint32_t _has_storage_[1];
  uint32_t funcTable;
  uint32_t alarmSupportMax;
  operate_type operate;
  uint32_t num;
  NSMutableArray *alarmItemArray;
} protocol_alarm_inquire_reply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "funcTable",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_alarm_inquire_reply_FieldNumber_FuncTable,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_alarm_inquire_reply__storage_, funcTable),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "alarmSupportMax",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_alarm_inquire_reply_FieldNumber_AlarmSupportMax,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_alarm_inquire_reply__storage_, alarmSupportMax),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_alarm_inquire_reply_FieldNumber_Operate,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_alarm_inquire_reply__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "num",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_alarm_inquire_reply_FieldNumber_Num,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_alarm_inquire_reply__storage_, num),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "alarmItemArray",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_set_alarm_item),
        .number = protocol_alarm_inquire_reply_FieldNumber_AlarmItemArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_alarm_inquire_reply__storage_, alarmItemArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_alarm_inquire_reply class]
                                     rootClass:[AlarmRoot class]
                                          file:AlarmRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_alarm_inquire_reply__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_alarm_inquire_reply_Operate_RawValue(protocol_alarm_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_alarm_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_alarm_inquire_reply_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_alarm_inquire_reply_Operate_RawValue(protocol_alarm_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_alarm_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_alarm_inquire_reply_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
