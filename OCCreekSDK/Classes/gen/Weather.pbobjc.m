// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: weather.proto

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

#import "Weather.pbobjc.h"
#import "Enums.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(protocol_weather_detail_data_item);
GPBObjCClassDeclaration(protocol_weather_future_item);
GPBObjCClassDeclaration(protocol_weather_hour_weather_item);
GPBObjCClassDeclaration(protocol_weather_moon_item);
GPBObjCClassDeclaration(protocol_weather_sunrise_item);

#pragma mark - WeatherRoot

@implementation WeatherRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - WeatherRoot_FileDescriptor

static GPBFileDescriptor *WeatherRoot_FileDescriptor(void) {
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

#pragma mark - protocol_weather_future_item

@implementation protocol_weather_future_item

@dynamic weatherType;
@dynamic maxTemp;
@dynamic minTemp;

typedef struct protocol_weather_future_item__storage_ {
  uint32_t _has_storage_[1];
  weather_type weatherType;
  int32_t maxTemp;
  int32_t minTemp;
} protocol_weather_future_item__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "weatherType",
        .dataTypeSpecific.enumDescFunc = weather_type_EnumDescriptor,
        .number = protocol_weather_future_item_FieldNumber_WeatherType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_weather_future_item__storage_, weatherType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "maxTemp",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_future_item_FieldNumber_MaxTemp,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_weather_future_item__storage_, maxTemp),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "minTemp",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_future_item_FieldNumber_MinTemp,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_weather_future_item__storage_, minTemp),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_weather_future_item class]
                                     rootClass:[WeatherRoot class]
                                          file:WeatherRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_weather_future_item__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_weather_future_item_WeatherType_RawValue(protocol_weather_future_item *message) {
  GPBDescriptor *descriptor = [protocol_weather_future_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_future_item_FieldNumber_WeatherType];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_weather_future_item_WeatherType_RawValue(protocol_weather_future_item *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_weather_future_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_future_item_FieldNumber_WeatherType];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_weather_hour_weather_item

@implementation protocol_weather_hour_weather_item

@dynamic weatherType;
@dynamic temperature;

typedef struct protocol_weather_hour_weather_item__storage_ {
  uint32_t _has_storage_[1];
  weather_type weatherType;
  int32_t temperature;
} protocol_weather_hour_weather_item__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "weatherType",
        .dataTypeSpecific.enumDescFunc = weather_type_EnumDescriptor,
        .number = protocol_weather_hour_weather_item_FieldNumber_WeatherType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_weather_hour_weather_item__storage_, weatherType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "temperature",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_hour_weather_item_FieldNumber_Temperature,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_weather_hour_weather_item__storage_, temperature),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_weather_hour_weather_item class]
                                     rootClass:[WeatherRoot class]
                                          file:WeatherRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_weather_hour_weather_item__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_weather_hour_weather_item_WeatherType_RawValue(protocol_weather_hour_weather_item *message) {
  GPBDescriptor *descriptor = [protocol_weather_hour_weather_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_hour_weather_item_FieldNumber_WeatherType];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_weather_hour_weather_item_WeatherType_RawValue(protocol_weather_hour_weather_item *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_weather_hour_weather_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_hour_weather_item_FieldNumber_WeatherType];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_weather_sunrise_item

@implementation protocol_weather_sunrise_item

@dynamic sunriseHour;
@dynamic sunriseMin;
@dynamic sunsetHour;
@dynamic sunsetMin;

typedef struct protocol_weather_sunrise_item__storage_ {
  uint32_t _has_storage_[1];
  uint32_t sunriseHour;
  uint32_t sunriseMin;
  uint32_t sunsetHour;
  uint32_t sunsetMin;
} protocol_weather_sunrise_item__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "sunriseHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_sunrise_item_FieldNumber_SunriseHour,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_weather_sunrise_item__storage_, sunriseHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "sunriseMin",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_sunrise_item_FieldNumber_SunriseMin,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_weather_sunrise_item__storage_, sunriseMin),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "sunsetHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_sunrise_item_FieldNumber_SunsetHour,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_weather_sunrise_item__storage_, sunsetHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "sunsetMin",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_sunrise_item_FieldNumber_SunsetMin,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_weather_sunrise_item__storage_, sunsetMin),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_weather_sunrise_item class]
                                     rootClass:[WeatherRoot class]
                                          file:WeatherRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_weather_sunrise_item__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - protocol_weather_moon_item

@implementation protocol_weather_moon_item

@dynamic moonriseHour;
@dynamic moonriseMin;
@dynamic moonsetHour;
@dynamic moonsetMin;
@dynamic phase;

typedef struct protocol_weather_moon_item__storage_ {
  uint32_t _has_storage_[1];
  uint32_t moonriseHour;
  uint32_t moonriseMin;
  uint32_t moonsetHour;
  uint32_t moonsetMin;
  moon_phase phase;
} protocol_weather_moon_item__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "moonriseHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_moon_item_FieldNumber_MoonriseHour,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_weather_moon_item__storage_, moonriseHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "moonriseMin",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_moon_item_FieldNumber_MoonriseMin,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_weather_moon_item__storage_, moonriseMin),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "moonsetHour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_moon_item_FieldNumber_MoonsetHour,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_weather_moon_item__storage_, moonsetHour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "moonsetMin",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_moon_item_FieldNumber_MoonsetMin,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_weather_moon_item__storage_, moonsetMin),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "phase",
        .dataTypeSpecific.enumDescFunc = moon_phase_EnumDescriptor,
        .number = protocol_weather_moon_item_FieldNumber_Phase,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_weather_moon_item__storage_, phase),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_weather_moon_item class]
                                     rootClass:[WeatherRoot class]
                                          file:WeatherRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_weather_moon_item__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_weather_moon_item_Phase_RawValue(protocol_weather_moon_item *message) {
  GPBDescriptor *descriptor = [protocol_weather_moon_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_moon_item_FieldNumber_Phase];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_weather_moon_item_Phase_RawValue(protocol_weather_moon_item *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_weather_moon_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_moon_item_FieldNumber_Phase];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_weather_detail_data_item

@implementation protocol_weather_detail_data_item

@dynamic month;
@dynamic day;
@dynamic hour;
@dynamic min;
@dynamic week;
@dynamic weatherType;
@dynamic curTemp;
@dynamic curMaxTemp;
@dynamic curMinTemp;
@dynamic cityName;
@dynamic hoursWeatherItemsArray, hoursWeatherItemsArray_Count;
@dynamic airQuality;
@dynamic rainfallProbability;
@dynamic humidity;
@dynamic ultravioletIntensity;
@dynamic windSpeed;
@dynamic windLevel;
@dynamic windDirection;
@dynamic futureItemsArray, futureItemsArray_Count;
@dynamic hasSunriseItem, sunriseItem;
@dynamic location;
@dynamic atmosHpa;
@dynamic uvItemsArray, uvItemsArray_Count;
@dynamic moonItemArray, moonItemArray_Count;
@dynamic sunriseItemsArray, sunriseItemsArray_Count;
@dynamic atmosHpaItemsArray, atmosHpaItemsArray_Count;
@dynamic visibility;
@dynamic visibilityLevel;

typedef struct protocol_weather_detail_data_item__storage_ {
  uint32_t _has_storage_[1];
  uint32_t month;
  uint32_t day;
  uint32_t hour;
  uint32_t min;
  uint32_t week;
  weather_type weatherType;
  int32_t curTemp;
  int32_t curMaxTemp;
  int32_t curMinTemp;
  uint32_t airQuality;
  uint32_t rainfallProbability;
  uint32_t humidity;
  uint32_t ultravioletIntensity;
  uint32_t windSpeed;
  uint32_t windLevel;
  wind_direction_type windDirection;
  uint32_t atmosHpa;
  uint32_t visibility;
  uint32_t visibilityLevel;
  NSData *cityName;
  NSMutableArray *hoursWeatherItemsArray;
  NSMutableArray *futureItemsArray;
  protocol_weather_sunrise_item *sunriseItem;
  GPBUInt32Array *uvItemsArray;
  NSMutableArray *moonItemArray;
  NSMutableArray *sunriseItemsArray;
  GPBUInt32Array *atmosHpaItemsArray;
} protocol_weather_detail_data_item__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "month",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_Month,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, month),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "day",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_Day,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, day),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "hour",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_Hour,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, hour),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "min",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_Min,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, min),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "week",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_Week,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, week),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "weatherType",
        .dataTypeSpecific.enumDescFunc = weather_type_EnumDescriptor,
        .number = protocol_weather_detail_data_item_FieldNumber_WeatherType,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, weatherType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "curTemp",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_CurTemp,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, curTemp),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "curMaxTemp",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_CurMaxTemp,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, curMaxTemp),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "curMinTemp",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_CurMinTemp,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, curMinTemp),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "cityName",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_CityName,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, cityName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "hoursWeatherItemsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_weather_hour_weather_item),
        .number = protocol_weather_detail_data_item_FieldNumber_HoursWeatherItemsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, hoursWeatherItemsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "airQuality",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_AirQuality,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, airQuality),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "rainfallProbability",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_RainfallProbability,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, rainfallProbability),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "humidity",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_Humidity,
        .hasIndex = 12,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, humidity),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "ultravioletIntensity",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_UltravioletIntensity,
        .hasIndex = 13,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, ultravioletIntensity),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "windSpeed",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_WindSpeed,
        .hasIndex = 14,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, windSpeed),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "windLevel",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_WindLevel,
        .hasIndex = 15,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, windLevel),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "windDirection",
        .dataTypeSpecific.enumDescFunc = wind_direction_type_EnumDescriptor,
        .number = protocol_weather_detail_data_item_FieldNumber_WindDirection,
        .hasIndex = 16,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, windDirection),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "futureItemsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_weather_future_item),
        .number = protocol_weather_detail_data_item_FieldNumber_FutureItemsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, futureItemsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "sunriseItem",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_weather_sunrise_item),
        .number = protocol_weather_detail_data_item_FieldNumber_SunriseItem,
        .hasIndex = 17,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, sunriseItem),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "location",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_Location,
        .hasIndex = 18,
        .offset = 19,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "atmosHpa",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_AtmosHpa,
        .hasIndex = 20,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, atmosHpa),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "uvItemsArray",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_UvItemsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, uvItemsArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "moonItemArray",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_weather_moon_item),
        .number = protocol_weather_detail_data_item_FieldNumber_MoonItemArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, moonItemArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "sunriseItemsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_weather_sunrise_item),
        .number = protocol_weather_detail_data_item_FieldNumber_SunriseItemsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, sunriseItemsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "atmosHpaItemsArray",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_AtmosHpaItemsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, atmosHpaItemsArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "visibility",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_Visibility,
        .hasIndex = 21,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, visibility),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "visibilityLevel",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_detail_data_item_FieldNumber_VisibilityLevel,
        .hasIndex = 22,
        .offset = (uint32_t)offsetof(protocol_weather_detail_data_item__storage_, visibilityLevel),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_weather_detail_data_item class]
                                     rootClass:[WeatherRoot class]
                                          file:WeatherRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_weather_detail_data_item__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_weather_detail_data_item_WeatherType_RawValue(protocol_weather_detail_data_item *message) {
  GPBDescriptor *descriptor = [protocol_weather_detail_data_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_detail_data_item_FieldNumber_WeatherType];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_weather_detail_data_item_WeatherType_RawValue(protocol_weather_detail_data_item *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_weather_detail_data_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_detail_data_item_FieldNumber_WeatherType];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t protocol_weather_detail_data_item_WindDirection_RawValue(protocol_weather_detail_data_item *message) {
  GPBDescriptor *descriptor = [protocol_weather_detail_data_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_detail_data_item_FieldNumber_WindDirection];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_weather_detail_data_item_WindDirection_RawValue(protocol_weather_detail_data_item *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_weather_detail_data_item descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_detail_data_item_FieldNumber_WindDirection];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_weather_operate

@implementation protocol_weather_operate

@dynamic operate;
@dynamic switchFlag;
@dynamic detailDataItemArray, detailDataItemArray_Count;

typedef struct protocol_weather_operate__storage_ {
  uint32_t _has_storage_[1];
  operate_type operate;
  NSMutableArray *detailDataItemArray;
} protocol_weather_operate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_weather_operate_FieldNumber_Operate,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_weather_operate__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "switchFlag",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_operate_FieldNumber_SwitchFlag,
        .hasIndex = 1,
        .offset = 2,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "detailDataItemArray",
        .dataTypeSpecific.clazz = GPBObjCClass(protocol_weather_detail_data_item),
        .number = protocol_weather_operate_FieldNumber_DetailDataItemArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(protocol_weather_operate__storage_, detailDataItemArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_weather_operate class]
                                     rootClass:[WeatherRoot class]
                                          file:WeatherRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_weather_operate__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_weather_operate_Operate_RawValue(protocol_weather_operate *message) {
  GPBDescriptor *descriptor = [protocol_weather_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_operate_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_weather_operate_Operate_RawValue(protocol_weather_operate *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_weather_operate descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_operate_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - protocol_weather_inquire_reply

@implementation protocol_weather_inquire_reply

@dynamic funcTable;
@dynamic weatherSupportMax;
@dynamic operate;

typedef struct protocol_weather_inquire_reply__storage_ {
  uint32_t _has_storage_[1];
  uint32_t funcTable;
  uint32_t weatherSupportMax;
  operate_type operate;
} protocol_weather_inquire_reply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "funcTable",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_inquire_reply_FieldNumber_FuncTable,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(protocol_weather_inquire_reply__storage_, funcTable),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "weatherSupportMax",
        .dataTypeSpecific.clazz = Nil,
        .number = protocol_weather_inquire_reply_FieldNumber_WeatherSupportMax,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(protocol_weather_inquire_reply__storage_, weatherSupportMax),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "operate",
        .dataTypeSpecific.enumDescFunc = operate_type_EnumDescriptor,
        .number = protocol_weather_inquire_reply_FieldNumber_Operate,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(protocol_weather_inquire_reply__storage_, operate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[protocol_weather_inquire_reply class]
                                     rootClass:[WeatherRoot class]
                                          file:WeatherRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(protocol_weather_inquire_reply__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t protocol_weather_inquire_reply_Operate_RawValue(protocol_weather_inquire_reply *message) {
  GPBDescriptor *descriptor = [protocol_weather_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_inquire_reply_FieldNumber_Operate];
  return GPBGetMessageRawEnumField(message, field);
}

void Setprotocol_weather_inquire_reply_Operate_RawValue(protocol_weather_inquire_reply *message, int32_t value) {
  GPBDescriptor *descriptor = [protocol_weather_inquire_reply descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:protocol_weather_inquire_reply_FieldNumber_Operate];
  GPBSetMessageRawEnumField(message, field, value);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
