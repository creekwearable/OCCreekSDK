// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: sensor.proto

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

#import "Sensor.pbobjc.h"
#import "Enums.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - SensorRoot

@implementation SensorRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - SensorRoot_FileDescriptor

static GPBFileDescriptor *SensorRoot_FileDescriptor(void) {
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

#pragma mark - protocol_sensor_rawdata_tran_operate

@implementation protocol_sensor_rawdata_tran_operate

@dynamic operate;
@dynamic sensorOperate;
@dynamic ppgGData;
@dynamic ppgRData;
@dynamic ppgIrData;
@dynamic accData;
@dynamic gyroData;
@dynamic geomagneticData;
@dynamic gnssData;
@dynamic audioData;
@dynamic infraredData;
@dynamic sarData;

typedef struct protocol_sensor_rawdata_tran_operate__storage_ {
  uint32_t _has_storage_[1];
  operate_type operate;
  sensor_operate_type sensorOperate;
} protocol_sensor_rawdata_tran_operate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_sensor_rawdata_tran_operate_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_operate__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "sensorOperate",
        .dataTypeSpecific.enumDescFunc = sensor_operate_type_EnumDescriptor,
        .number = protocol_sensor_rawdata_tran_operate_FieldNumber_SensorOperate,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_operate__storage_, sensorOperate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "ppgGData",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_operate_FieldNumber_PpgGData,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "ppgRData",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_operate_FieldNumber_PpgRData,
        .hasIndex = 4,
        .offset = 5,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "ppgIrData",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_operate_FieldNumber_PpgIrData,
        .hasIndex = 6,
        .offset = 7,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "accData",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_operate_FieldNumber_AccData,
        .hasIndex = 8,
        .offset = 9,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "gyroData",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_operate_FieldNumber_GyroData,
        .hasIndex = 10,
        .offset = 11,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "geomagneticData",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_operate_FieldNumber_GeomagneticData,
        .hasIndex = 12,
        .offset = 13,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "gnssData",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_operate_FieldNumber_GnssData,
        .hasIndex = 14,
        .offset = 15,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "audioData",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_operate_FieldNumber_AudioData,
        .hasIndex = 16,
        .offset = 17,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "infraredData",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_operate_FieldNumber_InfraredData,
        .hasIndex = 18,
        .offset = 19,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "sarData",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_operate_FieldNumber_SarData,
        .hasIndex = 20,
        .offset = 21,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_sensor_rawdata_tran_operate class]
                                     rootClass:[SensorRoot class]
                                          file:SensorRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_sensor_rawdata_tran_operate__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_sensor_rawdata_tran_operate_Operate_RawValue(protocol_sensor_rawdata_tran_operate *message) {
  GPBDescriptor *descriptor = [protocol_sensor_rawdata_tran_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_sensor_rawdata_tran_operate_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_sensor_rawdata_tran_operate_Operate_RawValue(protocol_sensor_rawdata_tran_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_sensor_rawdata_tran_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_sensor_rawdata_tran_operate_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_sensor_rawdata_tran_operate_SensorOperate_RawValue(protocol_sensor_rawdata_tran_operate *message) {
  GPBDescriptor *descriptor = [protocol_sensor_rawdata_tran_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_sensor_rawdata_tran_operate_FieldNumber_SensorOperate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_sensor_rawdata_tran_operate_SensorOperate_RawValue(protocol_sensor_rawdata_tran_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_sensor_rawdata_tran_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_sensor_rawdata_tran_operate_FieldNumber_SensorOperate];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_sensor_rawdata_tran_inquire_reply

@implementation protocol_sensor_rawdata_tran_inquire_reply

@dynamic operate;
@dynamic hrVersion;
@dynamic spo2Version;
@dynamic stressVersion;
@dynamic hrvVersion;
@dynamic pedoVersion;
@dynamic calorieVersion;
@dynamic distanceVersion;
@dynamic activityLevelVersion;
@dynamic gestureVersion;
@dynamic wearVersion;
@dynamic noiseVersion;
@dynamic exerciseDurationVersion;
@dynamic sleepVersion;
@dynamic gnssVersion;
@dynamic motionRecognitionVersion;

typedef struct protocol_sensor_rawdata_tran_inquire_reply__storage_ {
  uint32_t _has_storage_[1];
  operate_type operate;
  uint32_t hrVersion;
  uint32_t spo2Version;
  uint32_t stressVersion;
  uint32_t hrvVersion;
  uint32_t pedoVersion;
  uint32_t calorieVersion;
  uint32_t distanceVersion;
  uint32_t activityLevelVersion;
  uint32_t gestureVersion;
  uint32_t wearVersion;
  uint32_t noiseVersion;
  uint32_t exerciseDurationVersion;
  uint32_t sleepVersion;
  uint32_t gnssVersion;
  uint32_t motionRecognitionVersion;
} protocol_sensor_rawdata_tran_inquire_reply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "hrVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_HrVersion,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, hrVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "spo2Version",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_Spo2Version,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, spo2Version),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "stressVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_StressVersion,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, stressVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "hrvVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_HrvVersion,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, hrvVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "pedoVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_PedoVersion,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, pedoVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "calorieVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_CalorieVersion,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, calorieVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "distanceVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_DistanceVersion,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, distanceVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "activityLevelVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_ActivityLevelVersion,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, activityLevelVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "gestureVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_GestureVersion,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, gestureVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "wearVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_WearVersion,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, wearVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "noiseVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_NoiseVersion,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, noiseVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "exerciseDurationVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_ExerciseDurationVersion,
        .hasIndex = 12,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, exerciseDurationVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "sleepVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_SleepVersion,
        .hasIndex = 13,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, sleepVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "gnssVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_GnssVersion,
        .hasIndex = 14,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, gnssVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "motionRecognitionVersion",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_MotionRecognitionVersion,
        .hasIndex = 15,
        .offset = (uint32_t)offsetof(protocol_sensor_rawdata_tran_inquire_reply__storage_, motionRecognitionVersion),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_sensor_rawdata_tran_inquire_reply class]
                                     rootClass:[SensorRoot class]
                                          file:SensorRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_sensor_rawdata_tran_inquire_reply__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_sensor_rawdata_tran_inquire_reply_Operate_RawValue(protocol_sensor_rawdata_tran_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_sensor_rawdata_tran_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_sensor_rawdata_tran_inquire_reply_Operate_RawValue(protocol_sensor_rawdata_tran_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_sensor_rawdata_tran_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_sensor_rawdata_tran_inquire_reply_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
