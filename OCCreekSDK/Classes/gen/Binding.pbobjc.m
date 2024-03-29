// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: binding.proto

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

#import "Binding.pbobjc.h"
#import "Enums.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - BindingRoot

@implementation BindingRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - BindingRoot_FileDescriptor

static GPBFileDescriptor *BindingRoot_FileDescriptor(void) {
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

#pragma mark - protocol_bind_operate

@implementation protocol_bind_operate

@dynamic bindMethod;
@dynamic bindFlag;
@dynamic bindPhone;

typedef struct protocol_bind_operate__storage_ {
  uint32_t _has_storage_[1];
  bind_method bindMethod;
  bind_flag bindFlag;
  bind_phone_type bindPhone;
} protocol_bind_operate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "bindMethod",
        .dataTypeSpecific.enumDescFunc = bind_method_EnumDescriptor,
        .number = protocol_bind_operate_FieldNumber_BindMethod,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_bind_operate__storage_, bindMethod),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "bindFlag",
        .dataTypeSpecific.enumDescFunc = bind_flag_EnumDescriptor,
        .number = protocol_bind_operate_FieldNumber_BindFlag,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_bind_operate__storage_, bindFlag),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "bindPhone",
        .dataTypeSpecific.enumDescFunc = bind_phone_type_EnumDescriptor,
        .number = protocol_bind_operate_FieldNumber_BindPhone,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_bind_operate__storage_, bindPhone),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_bind_operate class]
                                     rootClass:[BindingRoot class]
                                          file:BindingRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_bind_operate__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_bind_operate_BindMethod_RawValue(protocol_bind_operate *message) {
  GPBDescriptor *descriptor = [protocol_bind_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_bind_operate_FieldNumber_BindMethod];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_bind_operate_BindMethod_RawValue(protocol_bind_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_bind_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_bind_operate_FieldNumber_BindMethod];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_bind_operate_BindFlag_RawValue(protocol_bind_operate *message) {
  GPBDescriptor *descriptor = [protocol_bind_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_bind_operate_FieldNumber_BindFlag];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_bind_operate_BindFlag_RawValue(protocol_bind_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_bind_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_bind_operate_FieldNumber_BindFlag];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_bind_operate_BindPhone_RawValue(protocol_bind_operate *message) {
  GPBDescriptor *descriptor = [protocol_bind_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_bind_operate_FieldNumber_BindPhone];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_bind_operate_BindPhone_RawValue(protocol_bind_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_bind_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_bind_operate_FieldNumber_BindPhone];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_bind_reply

@implementation protocol_bind_reply

@dynamic bindMethod;
@dynamic bindFlag;
@dynamic competentData;
@dynamic pairingCode;

typedef struct protocol_bind_reply__storage_ {
  uint32_t _has_storage_[1];
  bind_method bindMethod;
  bind_flag bindFlag;
  NSData *competentData;
  NSData *pairingCode;
} protocol_bind_reply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "bindMethod",
        .dataTypeSpecific.enumDescFunc = bind_method_EnumDescriptor,
        .number = protocol_bind_reply_FieldNumber_BindMethod,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_bind_reply__storage_, bindMethod),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "bindFlag",
        .dataTypeSpecific.enumDescFunc = bind_flag_EnumDescriptor,
        .number = protocol_bind_reply_FieldNumber_BindFlag,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_bind_reply__storage_, bindFlag),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "competentData",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_bind_reply_FieldNumber_CompetentData,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_bind_reply__storage_, competentData),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "pairingCode",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_bind_reply_FieldNumber_PairingCode,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_bind_reply__storage_, pairingCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_bind_reply class]
                                     rootClass:[BindingRoot class]
                                          file:BindingRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_bind_reply__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_bind_reply_BindMethod_RawValue(protocol_bind_reply *message) {
  GPBDescriptor *descriptor = [protocol_bind_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_bind_reply_FieldNumber_BindMethod];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_bind_reply_BindMethod_RawValue(protocol_bind_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_bind_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_bind_reply_FieldNumber_BindMethod];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_bind_reply_BindFlag_RawValue(protocol_bind_reply *message) {
  GPBDescriptor *descriptor = [protocol_bind_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_bind_reply_FieldNumber_BindFlag];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_bind_reply_BindFlag_RawValue(protocol_bind_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_bind_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_bind_reply_FieldNumber_BindFlag];
  GPBSetMessageRawEnumField(message, field, value);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
