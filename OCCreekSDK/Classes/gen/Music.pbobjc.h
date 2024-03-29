// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: music.proto

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

GPB_ENUM_FWD_DECLARE(music_status);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - MusicRoot

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
GPB_FINAL @interface MusicRoot : GPBRootObject
@end

#pragma mark - protocol_music_control_operate

typedef GPB_ENUM(protocol_music_control_operate_FieldNumber) {
  protocol_music_control_operate_FieldNumber_SwitchFlag = 1,
  protocol_music_control_operate_FieldNumber_Status = 2,
  protocol_music_control_operate_FieldNumber_CurTime = 3,
  protocol_music_control_operate_FieldNumber_TotalTime = 4,
  protocol_music_control_operate_FieldNumber_Volume = 5,
  protocol_music_control_operate_FieldNumber_MusicName = 6,
  protocol_music_control_operate_FieldNumber_SingerName = 7,
};

GPB_FINAL @interface protocol_music_control_operate : GPBMessage

/** 1bytes music control switch true on, false off */
@property(nonatomic, readwrite) BOOL switchFlag;

/** 1bytes status */
@property(nonatomic, readwrite) enum music_status status;

/** 2bytes current playback time in seconds */
@property(nonatomic, readwrite) uint32_t curTime;

/** 2bytes total time in seconds */
@property(nonatomic, readwrite) uint32_t totalTime;

/** 1bytes volume */
@property(nonatomic, readwrite) uint32_t volume;

/** max:64 song name */
@property(nonatomic, readwrite, copy, null_resettable) NSData *musicName;

/** max:64 singer name */
@property(nonatomic, readwrite, copy, null_resettable) NSData *singerName;

@end

/**
 * Fetches the raw value of a @c protocol_music_control_operate's @c status property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_music_control_operate_Status_RawValue(protocol_music_control_operate *message);
/**
 * Sets the raw value of an @c protocol_music_control_operate's @c status property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_music_control_operate_Status_RawValue(protocol_music_control_operate *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
