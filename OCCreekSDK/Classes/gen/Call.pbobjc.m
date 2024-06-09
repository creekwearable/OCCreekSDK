// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: call.proto

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

#import "Call.pbobjc.h"
#import "Enums.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - CallRoot

@implementation CallRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - CallRoot_FileDescriptor

static GPBFileDescriptor *CallRoot_FileDescriptor(void) {
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

#pragma mark - protocol_call_switch

@implementation protocol_call_switch

@dynamic operate;
@dynamic callSwitch;
@dynamic callDelay;

typedef struct protocol_call_switch__storage_ {
  uint32_t _has_storage_[1];
  operate_type operate;
  uint32_t callDelay;
} protocol_call_switch__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_call_switch_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_call_switch__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "callSwitch",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_call_switch_FieldNumber_CallSwitch,
        .hasIndex = 1,
        .offset = 2,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "callDelay",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_call_switch_FieldNumber_CallDelay,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_call_switch__storage_, callDelay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_call_switch class]
                                     rootClass:[CallRoot class]
                                          file:CallRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_call_switch__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_call_switch_Operate_RawValue(protocol_call_switch *message) {
  GPBDescriptor *descriptor = [protocol_call_switch descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_call_switch_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_call_switch_Operate_RawValue(protocol_call_switch *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_call_switch descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_call_switch_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_call_switch_inquire_reply

@implementation protocol_call_switch_inquire_reply

@dynamic operate;
@dynamic callSwitch;
@dynamic callDelay;

typedef struct protocol_call_switch_inquire_reply__storage_ {
  uint32_t _has_storage_[1];
  operate_type operate;
  uint32_t callDelay;
} protocol_call_switch_inquire_reply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_call_switch_inquire_reply_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_call_switch_inquire_reply__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "callSwitch",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_call_switch_inquire_reply_FieldNumber_CallSwitch,
        .hasIndex = 1,
        .offset = 2,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "callDelay",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_call_switch_inquire_reply_FieldNumber_CallDelay,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_call_switch_inquire_reply__storage_, callDelay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_call_switch_inquire_reply class]
                                     rootClass:[CallRoot class]
                                          file:CallRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_call_switch_inquire_reply__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_call_switch_inquire_reply_Operate_RawValue(protocol_call_switch_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_call_switch_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_call_switch_inquire_reply_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_call_switch_inquire_reply_Operate_RawValue(protocol_call_switch_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_call_switch_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_call_switch_inquire_reply_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_call_remind

@implementation protocol_call_remind

@dynamic contactName;
@dynamic phoneNumber;

typedef struct protocol_call_remind__storage_ {
  uint32_t _has_storage_[1];
  NSData *contactName;
  NSData *phoneNumber;
} protocol_call_remind__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "contactName",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_call_remind_FieldNumber_ContactName,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_call_remind__storage_, contactName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "phoneNumber",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_call_remind_FieldNumber_PhoneNumber,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_call_remind__storage_, phoneNumber),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_call_remind class]
                                     rootClass:[CallRoot class]
                                          file:CallRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_call_remind__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - protocol_call_remind_status

@implementation protocol_call_remind_status

@dynamic tranType;
@dynamic status;

typedef struct protocol_call_remind_status__storage_ {
  uint32_t _has_storage_[1];
  tran_direction_type tranType;
  call_status status;
} protocol_call_remind_status__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "tranType",
        .dataTypeSpecific.enumDescFunc = tran_direction_type_EnumDescriptor,
        .number = protocol_call_remind_status_FieldNumber_TranType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_call_remind_status__storage_, tranType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "status",
        .dataTypeSpecific.enumDescFunc = call_status_EnumDescriptor,
        .number = protocol_call_remind_status_FieldNumber_Status,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_call_remind_status__storage_, status),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_call_remind_status class]
                                     rootClass:[CallRoot class]
                                          file:CallRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_call_remind_status__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_call_remind_status_TranType_RawValue(protocol_call_remind_status *message) {
  GPBDescriptor *descriptor = [protocol_call_remind_status descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_call_remind_status_FieldNumber_TranType];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_call_remind_status_TranType_RawValue(protocol_call_remind_status *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_call_remind_status descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_call_remind_status_FieldNumber_TranType];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_call_remind_status_Status_RawValue(protocol_call_remind_status *message) {
  GPBDescriptor *descriptor = [protocol_call_remind_status descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_call_remind_status_FieldNumber_Status];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_call_remind_status_Status_RawValue(protocol_call_remind_status *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_call_remind_status descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_call_remind_status_FieldNumber_Status];
  GPBSetMessageRawEnumField(message, field, value);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
