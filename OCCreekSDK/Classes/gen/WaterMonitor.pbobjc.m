// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: waterMonitor.proto

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

#import "WaterMonitor.pbobjc.h"
#import "Enums.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - WaterMonitorRoot

@implementation WaterMonitorRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - WaterMonitorRoot_FileDescriptor

static GPBFileDescriptor *WaterMonitorRoot_FileDescriptor(void) {
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

#pragma mark - protocol_drink_water_operate

@implementation protocol_drink_water_operate

@dynamic operate;
@dynamic switchFlag;
@dynamic notifyFlag;
@dynamic startHour;
@dynamic startMinute;
@dynamic endHour;
@dynamic endMinute;
@dynamic repeatArray, repeatArray_Count;
@dynamic interval;

typedef struct protocol_drink_water_operate__storage_ {
  uint32_t _has_storage_[1];
  operate_type operate;
  notify_type notifyFlag;
  uint32_t startHour;
  uint32_t startMinute;
  uint32_t endHour;
  uint32_t endMinute;
  uint32_t interval;
  GPBBoolArray *repeatArray;
} protocol_drink_water_operate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_drink_water_operate_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_drink_water_operate__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "switchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_operate_FieldNumber_SwitchFlag,
        .hasIndex = 1,
        .offset = 2,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "notifyFlag",
        .dataTypeSpecific.enumDescFunc = notify_type_EnumDescriptor,
        .number = protocol_drink_water_operate_FieldNumber_NotifyFlag,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_drink_water_operate__storage_, notifyFlag),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "startHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_operate_FieldNumber_StartHour,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_drink_water_operate__storage_, startHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "startMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_operate_FieldNumber_StartMinute,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_drink_water_operate__storage_, startMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_operate_FieldNumber_EndHour,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(protocol_drink_water_operate__storage_, endHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_operate_FieldNumber_EndMinute,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(protocol_drink_water_operate__storage_, endMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "repeatArray",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_operate_FieldNumber_RepeatArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_drink_water_operate__storage_, repeatArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "interval",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_operate_FieldNumber_Interval,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(protocol_drink_water_operate__storage_, interval),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_drink_water_operate class]
                                     rootClass:[WaterMonitorRoot class]
                                          file:WaterMonitorRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_drink_water_operate__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_drink_water_operate_Operate_RawValue(protocol_drink_water_operate *message) {
  GPBDescriptor *descriptor = [protocol_drink_water_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_drink_water_operate_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_drink_water_operate_Operate_RawValue(protocol_drink_water_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_drink_water_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_drink_water_operate_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_drink_water_operate_NotifyFlag_RawValue(protocol_drink_water_operate *message) {
  GPBDescriptor *descriptor = [protocol_drink_water_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_drink_water_operate_FieldNumber_NotifyFlag];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_drink_water_operate_NotifyFlag_RawValue(protocol_drink_water_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_drink_water_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_drink_water_operate_FieldNumber_NotifyFlag];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_drink_water_inquire_reply

@implementation protocol_drink_water_inquire_reply

@dynamic funcTable;
@dynamic operate;
@dynamic switchFlag;
@dynamic notifyFlag;
@dynamic startHour;
@dynamic startMinute;
@dynamic endHour;
@dynamic endMinute;
@dynamic repeatArray, repeatArray_Count;
@dynamic interval;

typedef struct protocol_drink_water_inquire_reply__storage_ {
  uint32_t _has_storage_[1];
  uint32_t funcTable;
  operate_type operate;
  notify_type notifyFlag;
  uint32_t startHour;
  uint32_t startMinute;
  uint32_t endHour;
  uint32_t endMinute;
  uint32_t interval;
  GPBBoolArray *repeatArray;
} protocol_drink_water_inquire_reply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "funcTable",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_inquire_reply_FieldNumber_FuncTable,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_drink_water_inquire_reply__storage_, funcTable),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_drink_water_inquire_reply_FieldNumber_Operate,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_drink_water_inquire_reply__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "switchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_inquire_reply_FieldNumber_SwitchFlag,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "notifyFlag",
        .dataTypeSpecific.enumDescFunc = notify_type_EnumDescriptor,
        .number = protocol_drink_water_inquire_reply_FieldNumber_NotifyFlag,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_drink_water_inquire_reply__storage_, notifyFlag),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "startHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_inquire_reply_FieldNumber_StartHour,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_drink_water_inquire_reply__storage_, startHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "startMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_inquire_reply_FieldNumber_StartMinute,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(protocol_drink_water_inquire_reply__storage_, startMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_inquire_reply_FieldNumber_EndHour,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(protocol_drink_water_inquire_reply__storage_, endHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_inquire_reply_FieldNumber_EndMinute,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(protocol_drink_water_inquire_reply__storage_, endMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "repeatArray",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_inquire_reply_FieldNumber_RepeatArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_drink_water_inquire_reply__storage_, repeatArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "interval",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_drink_water_inquire_reply_FieldNumber_Interval,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(protocol_drink_water_inquire_reply__storage_, interval),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_drink_water_inquire_reply class]
                                     rootClass:[WaterMonitorRoot class]
                                          file:WaterMonitorRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_drink_water_inquire_reply__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_drink_water_inquire_reply_Operate_RawValue(protocol_drink_water_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_drink_water_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_drink_water_inquire_reply_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_drink_water_inquire_reply_Operate_RawValue(protocol_drink_water_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_drink_water_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_drink_water_inquire_reply_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_drink_water_inquire_reply_NotifyFlag_RawValue(protocol_drink_water_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_drink_water_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_drink_water_inquire_reply_FieldNumber_NotifyFlag];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_drink_water_inquire_reply_NotifyFlag_RawValue(protocol_drink_water_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_drink_water_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_drink_water_inquire_reply_FieldNumber_NotifyFlag];
  GPBSetMessageRawEnumField(message, field, value);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)