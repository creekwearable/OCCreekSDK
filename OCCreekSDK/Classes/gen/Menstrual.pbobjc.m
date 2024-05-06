// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: menstrual.proto

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

#import "Menstrual.pbobjc.h"
#import "Enums.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(protocol_menstrual_period_set);
GPBObjCClassDeclaration(protocol_menstrual_record);

#pragma mark - MenstrualRoot

@implementation MenstrualRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - MenstrualRoot_FileDescriptor

static GPBFileDescriptor *MenstrualRoot_FileDescriptor(void) {
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

#pragma mark - protocol_menstrual_period_set

@implementation protocol_menstrual_period_set

@dynamic switchFlag;
@dynamic periodLength;
@dynamic cycleLength;
@dynamic lastYear;
@dynamic lastMonth;
@dynamic lastDay;

typedef struct protocol_menstrual_period_set__storage_ {
  uint32_t _has_storage_[1];
  uint32_t periodLength;
  uint32_t cycleLength;
  uint32_t lastYear;
  uint32_t lastMonth;
  uint32_t lastDay;
} protocol_menstrual_period_set__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "switchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstrual_period_set_FieldNumber_SwitchFlag,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "periodLength",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstrual_period_set_FieldNumber_PeriodLength,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_menstrual_period_set__storage_, periodLength),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "cycleLength",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstrual_period_set_FieldNumber_CycleLength,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_menstrual_period_set__storage_, cycleLength),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "lastYear",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstrual_period_set_FieldNumber_LastYear,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_menstrual_period_set__storage_, lastYear),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "lastMonth",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstrual_period_set_FieldNumber_LastMonth,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_menstrual_period_set__storage_, lastMonth),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "lastDay",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstrual_period_set_FieldNumber_LastDay,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(protocol_menstrual_period_set__storage_, lastDay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_menstrual_period_set class]
                                     rootClass:[MenstrualRoot class]
                                          file:MenstrualRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_menstrual_period_set__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - protocol_menstrual_record

@implementation protocol_menstrual_record

@dynamic year;
@dynamic month;
@dynamic day;
@dynamic log;
@dynamic operateUtcTime;

typedef struct protocol_menstrual_record__storage_ {
  uint32_t _has_storage_[1];
  uint32_t year;
  uint32_t month;
  uint32_t day;
  period_log log;
  uint32_t operateUtcTime;
} protocol_menstrual_record__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "year",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstrual_record_FieldNumber_Year,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_menstrual_record__storage_, year),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "month",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstrual_record_FieldNumber_Month,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_menstrual_record__storage_, month),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "day",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstrual_record_FieldNumber_Day,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_menstrual_record__storage_, day),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "log",
        .dataTypeSpecific.enumDescFunc = period_log_EnumDescriptor,
        .number = protocol_menstrual_record_FieldNumber_Log,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_menstrual_record__storage_, log),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "operateUtcTime",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstrual_record_FieldNumber_OperateUtcTime,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_menstrual_record__storage_, operateUtcTime),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_menstrual_record class]
                                     rootClass:[MenstrualRoot class]
                                          file:MenstrualRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_menstrual_record__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_menstrual_record_Log_RawValue(protocol_menstrual_record *message) {
  GPBDescriptor *descriptor = [protocol_menstrual_record descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_menstrual_record_FieldNumber_Log];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_menstrual_record_Log_RawValue(protocol_menstrual_record *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_menstrual_record descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_menstrual_record_FieldNumber_Log];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_menstruation_operate

@implementation protocol_menstruation_operate

@dynamic operate;
@dynamic hasPeriodSet, periodSet;
@dynamic recordArray, recordArray_Count;
@dynamic setUtcTime;
@dynamic reminderSwitch;

typedef struct protocol_menstruation_operate__storage_ {
  uint32_t _has_storage_[1];
  operate_type operate;
  uint32_t setUtcTime;
  protocol_menstrual_period_set *periodSet;
  NSMutableArray *recordArray;
} protocol_menstruation_operate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_menstruation_operate_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_menstruation_operate__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "periodSet",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_menstrual_period_set),
        .number = protocol_menstruation_operate_FieldNumber_PeriodSet,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_menstruation_operate__storage_, periodSet),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "recordArray",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_menstrual_record),
        .number = protocol_menstruation_operate_FieldNumber_RecordArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_menstruation_operate__storage_, recordArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "setUtcTime",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstruation_operate_FieldNumber_SetUtcTime,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_menstruation_operate__storage_, setUtcTime),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "reminderSwitch",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstruation_operate_FieldNumber_ReminderSwitch,
        .hasIndex = 3,
        .offset = 4,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_menstruation_operate class]
                                     rootClass:[MenstrualRoot class]
                                          file:MenstrualRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_menstruation_operate__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_menstruation_operate_Operate_RawValue(protocol_menstruation_operate *message) {
  GPBDescriptor *descriptor = [protocol_menstruation_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_menstruation_operate_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_menstruation_operate_Operate_RawValue(protocol_menstruation_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_menstruation_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_menstruation_operate_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_menstruation_inquire_reply

@implementation protocol_menstruation_inquire_reply

@dynamic funcTable;
@dynamic operate;
@dynamic hasMenstrualPeriodSet, menstrualPeriodSet;
@dynamic recordArray, recordArray_Count;
@dynamic setUtcTime;
@dynamic reminderSwitch;

typedef struct protocol_menstruation_inquire_reply__storage_ {
  uint32_t _has_storage_[1];
  uint32_t funcTable;
  operate_type operate;
  uint32_t setUtcTime;
  protocol_menstrual_period_set *menstrualPeriodSet;
  NSMutableArray *recordArray;
} protocol_menstruation_inquire_reply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "funcTable",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstruation_inquire_reply_FieldNumber_FuncTable,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_menstruation_inquire_reply__storage_, funcTable),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_menstruation_inquire_reply_FieldNumber_Operate,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_menstruation_inquire_reply__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "menstrualPeriodSet",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_menstrual_period_set),
        .number = protocol_menstruation_inquire_reply_FieldNumber_MenstrualPeriodSet,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_menstruation_inquire_reply__storage_, menstrualPeriodSet),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "recordArray",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_menstrual_record),
        .number = protocol_menstruation_inquire_reply_FieldNumber_RecordArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_menstruation_inquire_reply__storage_, recordArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "setUtcTime",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstruation_inquire_reply_FieldNumber_SetUtcTime,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_menstruation_inquire_reply__storage_, setUtcTime),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "reminderSwitch",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_menstruation_inquire_reply_FieldNumber_ReminderSwitch,
        .hasIndex = 4,
        .offset = 5,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_menstruation_inquire_reply class]
                                     rootClass:[MenstrualRoot class]
                                          file:MenstrualRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_menstruation_inquire_reply__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_menstruation_inquire_reply_Operate_RawValue(protocol_menstruation_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_menstruation_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_menstruation_inquire_reply_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_menstruation_inquire_reply_Operate_RawValue(protocol_menstruation_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_menstruation_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_menstruation_inquire_reply_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
