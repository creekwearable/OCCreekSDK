// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: schedule.proto

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

#import "Schedule.pbobjc.h"
#import "Enums.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(protocol_schedule_item);

#pragma mark - ScheduleRoot

@implementation ScheduleRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - ScheduleRoot_FileDescriptor

static GPBFileDescriptor *ScheduleRoot_FileDescriptor(void) {
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

#pragma mark - protocol_schedule_item

@implementation protocol_schedule_item

@dynamic scheduleId;
@dynamic status;
@dynamic year;
@dynamic mon;
@dynamic day;
@dynamic hour;
@dynamic minute;
@dynamic sec;
@dynamic repeatArray, repeatArray_Count;
@dynamic titleLen;
@dynamic contentLen;
@dynamic title;
@dynamic content;

typedef struct protocol_schedule_item__storage_ {
  uint32_t _has_storage_[1];
  uint32_t scheduleId;
  disp_status status;
  uint32_t year;
  uint32_t mon;
  uint32_t day;
  uint32_t hour;
  uint32_t minute;
  uint32_t sec;
  uint32_t titleLen;
  uint32_t contentLen;
  GPBBoolArray *repeatArray;
  NSString *title;
  NSString *content;
} protocol_schedule_item__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "scheduleId",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_item_FieldNumber_ScheduleId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, scheduleId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "status",
        .dataTypeSpecific.enumDescFunc = disp_status_EnumDescriptor,
        .number = protocol_schedule_item_FieldNumber_Status,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, status),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "year",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_item_FieldNumber_Year,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, year),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "mon",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_item_FieldNumber_Mon,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, mon),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "day",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_item_FieldNumber_Day,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, day),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "hour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_item_FieldNumber_Hour,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, hour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "minute",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_item_FieldNumber_Minute,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, minute),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "sec",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_item_FieldNumber_Sec,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, sec),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "repeatArray",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_item_FieldNumber_RepeatArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, repeatArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "titleLen",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_item_FieldNumber_TitleLen,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, titleLen),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "contentLen",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_item_FieldNumber_ContentLen,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, contentLen),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "title",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_item_FieldNumber_Title,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, title),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "content",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_item_FieldNumber_Content,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(protocol_schedule_item__storage_, content),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_schedule_item class]
                                     rootClass:[ScheduleRoot class]
                                          file:ScheduleRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_schedule_item__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_schedule_item_Status_RawValue(protocol_schedule_item *message) {
  GPBDescriptor *descriptor = [protocol_schedule_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_schedule_item_FieldNumber_Status];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_schedule_item_Status_RawValue(protocol_schedule_item *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_schedule_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_schedule_item_FieldNumber_Status];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_schedule_operate

@implementation protocol_schedule_operate

@dynamic operate;
@dynamic notifyFlag;
@dynamic itemNum;
@dynamic hasScheduleItem, scheduleItem;

typedef struct protocol_schedule_operate__storage_ {
  uint32_t _has_storage_[1];
  operate_II_type operate;
  notify_type notifyFlag;
  uint32_t itemNum;
  protocol_schedule_item *scheduleItem;
} protocol_schedule_operate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_II_type_EnumDescriptor,
        .number = protocol_schedule_operate_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_schedule_operate__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "notifyFlag",
        .dataTypeSpecific.enumDescFunc = notify_type_EnumDescriptor,
        .number = protocol_schedule_operate_FieldNumber_NotifyFlag,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_schedule_operate__storage_, notifyFlag),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "itemNum",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_operate_FieldNumber_ItemNum,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_schedule_operate__storage_, itemNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "scheduleItem",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_schedule_item),
        .number = protocol_schedule_operate_FieldNumber_ScheduleItem,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_schedule_operate__storage_, scheduleItem),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_schedule_operate class]
                                     rootClass:[ScheduleRoot class]
                                          file:ScheduleRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_schedule_operate__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_schedule_operate_Operate_RawValue(protocol_schedule_operate *message) {
  GPBDescriptor *descriptor = [protocol_schedule_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_schedule_operate_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_schedule_operate_Operate_RawValue(protocol_schedule_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_schedule_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_schedule_operate_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_schedule_operate_NotifyFlag_RawValue(protocol_schedule_operate *message) {
  GPBDescriptor *descriptor = [protocol_schedule_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_schedule_operate_FieldNumber_NotifyFlag];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_schedule_operate_NotifyFlag_RawValue(protocol_schedule_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_schedule_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_schedule_operate_FieldNumber_NotifyFlag];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_schedule_inquire_reply

@implementation protocol_schedule_inquire_reply

@dynamic funcTable;
@dynamic operate;
@dynamic notifyFlag;
@dynamic itemNum;
@dynamic hasScheduleItem, scheduleItem;

typedef struct protocol_schedule_inquire_reply__storage_ {
  uint32_t _has_storage_[1];
  uint32_t funcTable;
  operate_II_type operate;
  notify_type notifyFlag;
  uint32_t itemNum;
  protocol_schedule_item *scheduleItem;
} protocol_schedule_inquire_reply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "funcTable",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_inquire_reply_FieldNumber_FuncTable,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_schedule_inquire_reply__storage_, funcTable),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_II_type_EnumDescriptor,
        .number = protocol_schedule_inquire_reply_FieldNumber_Operate,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_schedule_inquire_reply__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "notifyFlag",
        .dataTypeSpecific.enumDescFunc = notify_type_EnumDescriptor,
        .number = protocol_schedule_inquire_reply_FieldNumber_NotifyFlag,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_schedule_inquire_reply__storage_, notifyFlag),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "itemNum",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_schedule_inquire_reply_FieldNumber_ItemNum,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_schedule_inquire_reply__storage_, itemNum),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "scheduleItem",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_schedule_item),
        .number = protocol_schedule_inquire_reply_FieldNumber_ScheduleItem,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_schedule_inquire_reply__storage_, scheduleItem),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_schedule_inquire_reply class]
                                     rootClass:[ScheduleRoot class]
                                          file:ScheduleRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_schedule_inquire_reply__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_schedule_inquire_reply_Operate_RawValue(protocol_schedule_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_schedule_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_schedule_inquire_reply_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_schedule_inquire_reply_Operate_RawValue(protocol_schedule_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_schedule_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_schedule_inquire_reply_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_schedule_inquire_reply_NotifyFlag_RawValue(protocol_schedule_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_schedule_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_schedule_inquire_reply_FieldNumber_NotifyFlag];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_schedule_inquire_reply_NotifyFlag_RawValue(protocol_schedule_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_schedule_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_schedule_inquire_reply_FieldNumber_NotifyFlag];
  GPBSetMessageRawEnumField(message, field, value);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
