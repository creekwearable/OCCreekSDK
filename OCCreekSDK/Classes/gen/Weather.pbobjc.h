// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: weather.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30004
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30004 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class protocol_weather_detail_data_item;
@class protocol_weather_future_item;
@class protocol_weather_hour_weather_item;
@class protocol_weather_moon_item;
@class protocol_weather_sunrise_item;
GPB_ENUM_FWD_DECLARE(moon_phase);
GPB_ENUM_FWD_DECLARE(operate_type);
GPB_ENUM_FWD_DECLARE(weather_type);
GPB_ENUM_FWD_DECLARE(wind_direction_type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - WeatherRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
GPB_FINAL @interface WeatherRoot : GPBRootObject
@end

#pragma mark - protocol_weather_future_item

typedef GPB_ENUM(protocol_weather_future_item_FieldNumber) {
  protocol_weather_future_item_FieldNumber_WeatherType = 1,
  protocol_weather_future_item_FieldNumber_MaxTemp = 2,
  protocol_weather_future_item_FieldNumber_MinTemp = 3,
};

GPB_FINAL @interface protocol_weather_future_item : GPBMessage

/** 1bytes weather type */
@property(nonatomic, readwrite) enum weather_type weatherType;

/** 1bytes maximum temperature */
@property(nonatomic, readwrite) int32_t maxTemp;

/** 1bytes minimum temperature */
@property(nonatomic, readwrite) int32_t minTemp;

@end

/**
 * Fetches the raw value of a @c protocol_weather_future_item's @c weatherType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_weather_future_item_WeatherType_RawValue(protocol_weather_future_item *message);
/**
 * Sets the raw value of an @c protocol_weather_future_item's @c weatherType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_weather_future_item_WeatherType_RawValue(protocol_weather_future_item *message, int32_t value);

#pragma mark - protocol_weather_hour_weather_item

typedef GPB_ENUM(protocol_weather_hour_weather_item_FieldNumber) {
  protocol_weather_hour_weather_item_FieldNumber_WeatherType = 1,
  protocol_weather_hour_weather_item_FieldNumber_Temperature = 2,
};

GPB_FINAL @interface protocol_weather_hour_weather_item : GPBMessage

/** 1bytes weather type */
@property(nonatomic, readwrite) enum weather_type weatherType;

/** 1bytes temperature */
@property(nonatomic, readwrite) int32_t temperature;

@end

/**
 * Fetches the raw value of a @c protocol_weather_hour_weather_item's @c weatherType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_weather_hour_weather_item_WeatherType_RawValue(protocol_weather_hour_weather_item *message);
/**
 * Sets the raw value of an @c protocol_weather_hour_weather_item's @c weatherType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_weather_hour_weather_item_WeatherType_RawValue(protocol_weather_hour_weather_item *message, int32_t value);

#pragma mark - protocol_weather_sunrise_item

typedef GPB_ENUM(protocol_weather_sunrise_item_FieldNumber) {
  protocol_weather_sunrise_item_FieldNumber_SunriseHour = 1,
  protocol_weather_sunrise_item_FieldNumber_SunriseMin = 2,
  protocol_weather_sunrise_item_FieldNumber_SunsetHour = 3,
  protocol_weather_sunrise_item_FieldNumber_SunsetMin = 4,
};

/**
 * Sunrise and sunset time item
 **/
GPB_FINAL @interface protocol_weather_sunrise_item : GPBMessage

/** 1bytes sunrise */
@property(nonatomic, readwrite) uint32_t sunriseHour;

@property(nonatomic, readwrite) uint32_t sunriseMin;

/** 1bytes sunset */
@property(nonatomic, readwrite) uint32_t sunsetHour;

@property(nonatomic, readwrite) uint32_t sunsetMin;

@end

#pragma mark - protocol_weather_moon_item

typedef GPB_ENUM(protocol_weather_moon_item_FieldNumber) {
  protocol_weather_moon_item_FieldNumber_MoonriseHour = 1,
  protocol_weather_moon_item_FieldNumber_MoonriseMin = 2,
  protocol_weather_moon_item_FieldNumber_MoonsetHour = 3,
  protocol_weather_moon_item_FieldNumber_MoonsetMin = 4,
  protocol_weather_moon_item_FieldNumber_Phase = 5,
};

/**
 * Moonrise and moonset time item
 **/
GPB_FINAL @interface protocol_weather_moon_item : GPBMessage

/** 1bytes moonrise */
@property(nonatomic, readwrite) uint32_t moonriseHour;

@property(nonatomic, readwrite) uint32_t moonriseMin;

/** 1bytes moonset */
@property(nonatomic, readwrite) uint32_t moonsetHour;

@property(nonatomic, readwrite) uint32_t moonsetMin;

/** Moon phase */
@property(nonatomic, readwrite) enum moon_phase phase;

@end

/**
 * Fetches the raw value of a @c protocol_weather_moon_item's @c phase property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_weather_moon_item_Phase_RawValue(protocol_weather_moon_item *message);
/**
 * Sets the raw value of an @c protocol_weather_moon_item's @c phase property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_weather_moon_item_Phase_RawValue(protocol_weather_moon_item *message, int32_t value);

#pragma mark - protocol_weather_detail_data_item

typedef GPB_ENUM(protocol_weather_detail_data_item_FieldNumber) {
  protocol_weather_detail_data_item_FieldNumber_Month = 1,
  protocol_weather_detail_data_item_FieldNumber_Day = 2,
  protocol_weather_detail_data_item_FieldNumber_Hour = 3,
  protocol_weather_detail_data_item_FieldNumber_Min = 4,
  protocol_weather_detail_data_item_FieldNumber_Week = 5,
  protocol_weather_detail_data_item_FieldNumber_WeatherType = 6,
  protocol_weather_detail_data_item_FieldNumber_CurTemp = 7,
  protocol_weather_detail_data_item_FieldNumber_CurMaxTemp = 8,
  protocol_weather_detail_data_item_FieldNumber_CurMinTemp = 9,
  protocol_weather_detail_data_item_FieldNumber_CityName = 10,
  protocol_weather_detail_data_item_FieldNumber_HoursWeatherItemsArray = 11,
  protocol_weather_detail_data_item_FieldNumber_AirQuality = 12,
  protocol_weather_detail_data_item_FieldNumber_RainfallProbability = 13,
  protocol_weather_detail_data_item_FieldNumber_Humidity = 14,
  protocol_weather_detail_data_item_FieldNumber_UltravioletIntensity = 15,
  protocol_weather_detail_data_item_FieldNumber_WindSpeed = 16,
  protocol_weather_detail_data_item_FieldNumber_WindLevel = 17,
  protocol_weather_detail_data_item_FieldNumber_WindDirection = 18,
  protocol_weather_detail_data_item_FieldNumber_FutureItemsArray = 19,
  protocol_weather_detail_data_item_FieldNumber_SunriseItem = 20,
  protocol_weather_detail_data_item_FieldNumber_Location = 21,
  protocol_weather_detail_data_item_FieldNumber_AtmosHpa = 22,
  protocol_weather_detail_data_item_FieldNumber_UvItemsArray = 23,
  protocol_weather_detail_data_item_FieldNumber_MoonItemArray = 24,
  protocol_weather_detail_data_item_FieldNumber_SunriseItemsArray = 25,
};

GPB_FINAL @interface protocol_weather_detail_data_item : GPBMessage

/** The latest synchronization month */
@property(nonatomic, readwrite) uint32_t month;

@property(nonatomic, readwrite) uint32_t day;

/** hour */
@property(nonatomic, readwrite) uint32_t hour;

/** min */
@property(nonatomic, readwrite) uint32_t min;

/** 1bytes week 0x00 is invalid 0x01~0x07: Monday~Sunday */
@property(nonatomic, readwrite) uint32_t week;

/** 1bytes weather type */
@property(nonatomic, readwrite) enum weather_type weatherType;

/** 1bytes current temperature */
@property(nonatomic, readwrite) int32_t curTemp;

/** 1bytes maximum temperature */
@property(nonatomic, readwrite) int32_t curMaxTemp;

/** 1bytes minimum temperature */
@property(nonatomic, readwrite) int32_t curMinTemp;

/** max:60 city name */
@property(nonatomic, readwrite, copy, null_resettable) NSData *cityName;

/** max:48 real-time weather data, unit hour */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<protocol_weather_hour_weather_item*> *hoursWeatherItemsArray;
/** The number of items in @c hoursWeatherItemsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger hoursWeatherItemsArray_Count;

/** 1bytes air quality */
@property(nonatomic, readwrite) uint32_t airQuality;

/** 2bytes precipitation probability */
@property(nonatomic, readwrite) uint32_t rainfallProbability;

/** 1bytes humidity */
@property(nonatomic, readwrite) uint32_t humidity;

/** 1bytes ultraviolet intensity */
@property(nonatomic, readwrite) uint32_t ultravioletIntensity;

/** 1bytes wind speed, expand 100 times by default */
@property(nonatomic, readwrite) uint32_t windSpeed;

/** 1bytes wind level */
@property(nonatomic, readwrite) uint32_t windLevel;

/** 1bytes wind direction */
@property(nonatomic, readwrite) enum wind_direction_type windDirection;

/** Future weather data tentatively scheduled for 7 days */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<protocol_weather_future_item*> *futureItemsArray;
/** The number of items in @c futureItemsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger futureItemsArray_Count;

/** Sunrise and sunset time item */
@property(nonatomic, readwrite, strong, null_resettable) protocol_weather_sunrise_item *sunriseItem;
/** Test to see if @c sunriseItem has been set. */
@property(nonatomic, readwrite) BOOL hasSunriseItem;

/** Whether to locate the city */
@property(nonatomic, readwrite) BOOL location;

/** Air pressure, unit Pa value * 100 */
@property(nonatomic, readwrite) uint32_t atmosHpa;

/** max:24 实时紫外线强度 24小时 */
@property(nonatomic, readwrite, strong, null_resettable) GPBUInt32Array *uvItemsArray;
/** The number of items in @c uvItemsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger uvItemsArray_Count;

/** max：3 月出月落时间item 3天 */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<protocol_weather_moon_item*> *moonItemArray;
/** The number of items in @c moonItemArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger moonItemArray_Count;

/** max：3 日出日落时间item 3天 */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<protocol_weather_sunrise_item*> *sunriseItemsArray;
/** The number of items in @c sunriseItemsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger sunriseItemsArray_Count;

@end

/**
 * Fetches the raw value of a @c protocol_weather_detail_data_item's @c weatherType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_weather_detail_data_item_WeatherType_RawValue(protocol_weather_detail_data_item *message);
/**
 * Sets the raw value of an @c protocol_weather_detail_data_item's @c weatherType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_weather_detail_data_item_WeatherType_RawValue(protocol_weather_detail_data_item *message, int32_t value);

/**
 * Fetches the raw value of a @c protocol_weather_detail_data_item's @c windDirection property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_weather_detail_data_item_WindDirection_RawValue(protocol_weather_detail_data_item *message);
/**
 * Sets the raw value of an @c protocol_weather_detail_data_item's @c windDirection property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_weather_detail_data_item_WindDirection_RawValue(protocol_weather_detail_data_item *message, int32_t value);

#pragma mark - protocol_weather_operate

typedef GPB_ENUM(protocol_weather_operate_FieldNumber) {
  protocol_weather_operate_FieldNumber_Operate = 1,
  protocol_weather_operate_FieldNumber_SwitchFlag = 2,
  protocol_weather_operate_FieldNumber_DetailDataItemArray = 3,
};

GPB_FINAL @interface protocol_weather_operate : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes weather function true on, false off */
@property(nonatomic, readwrite) BOOL switchFlag;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<protocol_weather_detail_data_item*> *detailDataItemArray;
/** The number of items in @c detailDataItemArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger detailDataItemArray_Count;

@end

/**
 * Fetches the raw value of a @c protocol_weather_operate's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_weather_operate_Operate_RawValue(protocol_weather_operate *message);
/**
 * Sets the raw value of an @c protocol_weather_operate's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_weather_operate_Operate_RawValue(protocol_weather_operate *message, int32_t value);

#pragma mark - protocol_weather_inquire_reply

typedef GPB_ENUM(protocol_weather_inquire_reply_FieldNumber) {
  protocol_weather_inquire_reply_FieldNumber_FuncTable = 1,
  protocol_weather_inquire_reply_FieldNumber_WeatherSupportMax = 2,
  protocol_weather_inquire_reply_FieldNumber_Operate = 3,
};

GPB_FINAL @interface protocol_weather_inquire_reply : GPBMessage

/** 1bytes function table */
@property(nonatomic, readwrite) uint32_t funcTable;

/** 1bytes maximum number of weather details supported */
@property(nonatomic, readwrite) uint32_t weatherSupportMax;

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

@end

/**
 * Fetches the raw value of a @c protocol_weather_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_weather_inquire_reply_Operate_RawValue(protocol_weather_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_weather_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_weather_inquire_reply_Operate_RawValue(protocol_weather_inquire_reply *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
