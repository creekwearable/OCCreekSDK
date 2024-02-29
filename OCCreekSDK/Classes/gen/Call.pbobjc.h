// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: call.proto

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

GPB_ENUM_FWD_DECLARE(call_status);
GPB_ENUM_FWD_DECLARE(operate_type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - CallRoot

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
GPB_FINAL @interface CallRoot : GPBRootObject
@end

#pragma mark - protocol_call_switch

typedef GPB_ENUM(protocol_call_switch_FieldNumber) {
  protocol_call_switch_FieldNumber_Operate = 1,
  protocol_call_switch_FieldNumber_CallSwitch = 2,
  protocol_call_switch_FieldNumber_CallDelay = 3,
};

/**
 * Incoming call configuration
 **/
GPB_FINAL @interface protocol_call_switch : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1byte call switch true on false off */
@property(nonatomic, readwrite) BOOL callSwitch;

/** 1bytes call delay in seconds */
@property(nonatomic, readwrite) uint32_t callDelay;

@end

/**
 * Fetches the raw value of a @c protocol_call_switch's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_call_switch_Operate_RawValue(protocol_call_switch *message);
/**
 * Sets the raw value of an @c protocol_call_switch's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_call_switch_Operate_RawValue(protocol_call_switch *message, int32_t value);

#pragma mark - protocol_call_switch_inquire_reply

typedef GPB_ENUM(protocol_call_switch_inquire_reply_FieldNumber) {
  protocol_call_switch_inquire_reply_FieldNumber_Operate = 1,
  protocol_call_switch_inquire_reply_FieldNumber_CallSwitch = 2,
  protocol_call_switch_inquire_reply_FieldNumber_CallDelay = 3,
};

GPB_FINAL @interface protocol_call_switch_inquire_reply : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1byte call switch true on false off */
@property(nonatomic, readwrite) BOOL callSwitch;

/** 1bytes call delay in seconds */
@property(nonatomic, readwrite) uint32_t callDelay;

@end

/**
 * Fetches the raw value of a @c protocol_call_switch_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_call_switch_inquire_reply_Operate_RawValue(protocol_call_switch_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_call_switch_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_call_switch_inquire_reply_Operate_RawValue(protocol_call_switch_inquire_reply *message, int32_t value);

#pragma mark - protocol_call_remind

typedef GPB_ENUM(protocol_call_remind_FieldNumber) {
  protocol_call_remind_FieldNumber_ContactLen = 1,
  protocol_call_remind_FieldNumber_ContactText = 2,
  protocol_call_remind_FieldNumber_PhoneNumberLen = 3,
  protocol_call_remind_FieldNumber_PhoneNumber = 4,
};

/**
 * incoming call
 **/
GPB_FINAL @interface protocol_call_remind : GPBMessage

/** 2bytes contact length */
@property(nonatomic, readwrite) uint32_t contactLen;

/** contact name */
@property(nonatomic, readwrite, copy, null_resettable) NSString *contactText;

/** 2bytes length of phone number */
@property(nonatomic, readwrite) uint32_t phoneNumberLen;

/** max:32 phone number */
@property(nonatomic, readwrite, copy, null_resettable) NSString *phoneNumber;

@end

#pragma mark - protocol_call_remind_status

typedef GPB_ENUM(protocol_call_remind_status_FieldNumber) {
  protocol_call_remind_status_FieldNumber_Status = 1,
};

/**
 * Call status
 **/
GPB_FINAL @interface protocol_call_remind_status : GPBMessage

/** 1bytes incoming call status */
@property(nonatomic, readwrite) enum call_status status;

@end

/**
 * Fetches the raw value of a @c protocol_call_remind_status's @c status property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_call_remind_status_Status_RawValue(protocol_call_remind_status *message);
/**
 * Sets the raw value of an @c protocol_call_remind_status's @c status property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_call_remind_status_Status_RawValue(protocol_call_remind_status *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)