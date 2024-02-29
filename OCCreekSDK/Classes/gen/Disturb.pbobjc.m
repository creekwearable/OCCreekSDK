// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: disturb.proto

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

#import "Disturb.pbobjc.h"
#import "Enums.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(protocol_set_disturb_item);

#pragma mark - DisturbRoot

@implementation DisturbRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - DisturbRoot_FileDescriptor

static GPBFileDescriptor *DisturbRoot_FileDescriptor(void) {
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

#pragma mark - protocol_set_disturb_item

@implementation protocol_set_disturb_item

@dynamic disturbId;
@dynamic startHour;
@dynamic startMinute;
@dynamic endHour;
@dynamic endMinute;
@dynamic repeatArray, repeatArray_Count;
@dynamic switchFlag;

typedef struct protocol_set_disturb_item__storage_ {
  uint32_t _has_storage_[1];
  uint32_t disturbId;
  uint32_t startHour;
  uint32_t startMinute;
  uint32_t endHour;
  uint32_t endMinute;
  GPBBoolArray *repeatArray;
} protocol_set_disturb_item__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "disturbId",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_disturb_item_FieldNumber_DisturbId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_set_disturb_item__storage_, disturbId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "startHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_disturb_item_FieldNumber_StartHour,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_set_disturb_item__storage_, startHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "startMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_disturb_item_FieldNumber_StartMinute,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_set_disturb_item__storage_, startMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_disturb_item_FieldNumber_EndHour,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_set_disturb_item__storage_, endHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "endMinute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_disturb_item_FieldNumber_EndMinute,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_set_disturb_item__storage_, endMinute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "repeatArray",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_disturb_item_FieldNumber_RepeatArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_set_disturb_item__storage_, repeatArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "switchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_set_disturb_item_FieldNumber_SwitchFlag,
        .hasIndex = 5,
        .offset = 6,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_set_disturb_item class]
                                     rootClass:[DisturbRoot class]
                                          file:DisturbRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_set_disturb_item__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - protocol_disturb_operate

@implementation protocol_disturb_operate

@dynamic operate;
@dynamic num;
@dynamic disturbOnOff;
@dynamic disturbItemArray, disturbItemArray_Count;

typedef struct protocol_disturb_operate__storage_ {
  uint32_t _has_storage_[1];
  operate_type operate;
  uint32_t num;
  NSMutableArray *disturbItemArray;
} protocol_disturb_operate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_disturb_operate_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_disturb_operate__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "num",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_disturb_operate_FieldNumber_Num,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_disturb_operate__storage_, num),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "disturbOnOff",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_disturb_operate_FieldNumber_DisturbOnOff,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "disturbItemArray",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_set_disturb_item),
        .number = protocol_disturb_operate_FieldNumber_DisturbItemArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_disturb_operate__storage_, disturbItemArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_disturb_operate class]
                                     rootClass:[DisturbRoot class]
                                          file:DisturbRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_disturb_operate__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_disturb_operate_Operate_RawValue(protocol_disturb_operate *message) {
  GPBDescriptor *descriptor = [protocol_disturb_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_disturb_operate_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_disturb_operate_Operate_RawValue(protocol_disturb_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_disturb_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_disturb_operate_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_disturb_inquire_reply

@implementation protocol_disturb_inquire_reply

@dynamic funcTable;
@dynamic disturbMax;
@dynamic operate;
@dynamic num;
@dynamic disturbOnOff;
@dynamic disturbItemArray, disturbItemArray_Count;

typedef struct protocol_disturb_inquire_reply__storage_ {
  uint32_t _has_storage_[1];
  uint32_t funcTable;
  uint32_t disturbMax;
  operate_type operate;
  uint32_t num;
  NSMutableArray *disturbItemArray;
} protocol_disturb_inquire_reply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "funcTable",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_disturb_inquire_reply_FieldNumber_FuncTable,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_disturb_inquire_reply__storage_, funcTable),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "disturbMax",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_disturb_inquire_reply_FieldNumber_DisturbMax,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_disturb_inquire_reply__storage_, disturbMax),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_disturb_inquire_reply_FieldNumber_Operate,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_disturb_inquire_reply__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "num",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_disturb_inquire_reply_FieldNumber_Num,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_disturb_inquire_reply__storage_, num),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "disturbOnOff",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_disturb_inquire_reply_FieldNumber_DisturbOnOff,
        .hasIndex = 4,
        .offset = 5,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "disturbItemArray",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_set_disturb_item),
        .number = protocol_disturb_inquire_reply_FieldNumber_DisturbItemArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_disturb_inquire_reply__storage_, disturbItemArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_disturb_inquire_reply class]
                                     rootClass:[DisturbRoot class]
                                          file:DisturbRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_disturb_inquire_reply__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_disturb_inquire_reply_Operate_RawValue(protocol_disturb_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_disturb_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_disturb_inquire_reply_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_disturb_inquire_reply_Operate_RawValue(protocol_disturb_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_disturb_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_disturb_inquire_reply_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
