// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: mtu.proto

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

GPB_ENUM_FWD_DECLARE(operate_type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - MtuRoot

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
GPB_FINAL @interface MtuRoot : GPBRootObject
@end

#pragma mark - protocol_connect_status_operate

typedef GPB_ENUM(protocol_connect_status_operate_FieldNumber) {
  protocol_connect_status_operate_FieldNumber_Operate = 1,
  protocol_connect_status_operate_FieldNumber_ReconnectOperate = 2,
};

GPB_FINAL @interface protocol_connect_status_operate : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes reconnect operation */
@property(nonatomic, readwrite) BOOL reconnectOperate;

@end

/**
 * Fetches the raw value of a @c protocol_connect_status_operate's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_connect_status_operate_Operate_RawValue(protocol_connect_status_operate *message);
/**
 * Sets the raw value of an @c protocol_connect_status_operate's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_connect_status_operate_Operate_RawValue(protocol_connect_status_operate *message, int32_t value);

#pragma mark - protocol_connect_status_inquire_reply

typedef GPB_ENUM(protocol_connect_status_inquire_reply_FieldNumber) {
  protocol_connect_status_inquire_reply_FieldNumber_Operate = 1,
  protocol_connect_status_inquire_reply_FieldNumber_GetTranMtuSize = 2,
  protocol_connect_status_inquire_reply_FieldNumber_BlePairingStatus = 3,
  protocol_connect_status_inquire_reply_FieldNumber_BtPairingStatus = 4,
  protocol_connect_status_inquire_reply_FieldNumber_BtConnectStatus = 5,
};

GPB_FINAL @interface protocol_connect_status_inquire_reply : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

/** 4bytes maximum transmission length */
@property(nonatomic, readwrite) uint32_t getTranMtuSize;

/** 1bytes ble bluetooth pairing status */
@property(nonatomic, readwrite) BOOL blePairingStatus;

/** 1bytes bt bluetooth pairing status */
@property(nonatomic, readwrite) BOOL btPairingStatus;

/** 1bytes bt bluetooth connection status */
@property(nonatomic, readwrite) BOOL btConnectStatus;

@end

/**
 * Fetches the raw value of a @c protocol_connect_status_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_connect_status_inquire_reply_Operate_RawValue(protocol_connect_status_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_connect_status_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_connect_status_inquire_reply_Operate_RawValue(protocol_connect_status_inquire_reply *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
