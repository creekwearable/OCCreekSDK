// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: contacts.proto

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

@class protocol_frequent_contacts_item;
GPB_ENUM_FWD_DECLARE(operate_type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - ContactsRoot

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
GPB_FINAL @interface ContactsRoot : GPBRootObject
@end

#pragma mark - protocol_frequent_contacts_item

typedef GPB_ENUM(protocol_frequent_contacts_item_FieldNumber) {
  protocol_frequent_contacts_item_FieldNumber_PhoneNumber = 1,
  protocol_frequent_contacts_item_FieldNumber_ContactName = 2,
};

GPB_FINAL @interface protocol_frequent_contacts_item : GPBMessage

/** max:32 contact phone number */
@property(nonatomic, readwrite, copy, null_resettable) NSData *phoneNumber;

/** max:64 contact name */
@property(nonatomic, readwrite, copy, null_resettable) NSData *contactName;

@end

#pragma mark - protocol_frequent_contacts_operate

typedef GPB_ENUM(protocol_frequent_contacts_operate_FieldNumber) {
  protocol_frequent_contacts_operate_FieldNumber_Operate = 1,
  protocol_frequent_contacts_operate_FieldNumber_ContactsItemArray = 2,
};

GPB_FINAL @interface protocol_frequent_contacts_operate : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

/** max: 20 frequent contact information */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<protocol_frequent_contacts_item*> *contactsItemArray;
/** The number of items in @c contactsItemArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger contactsItemArray_Count;

@end

/**
 * Fetches the raw value of a @c protocol_frequent_contacts_operate's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_frequent_contacts_operate_Operate_RawValue(protocol_frequent_contacts_operate *message);
/**
 * Sets the raw value of an @c protocol_frequent_contacts_operate's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_frequent_contacts_operate_Operate_RawValue(protocol_frequent_contacts_operate *message, int32_t value);

#pragma mark - protocol_frequent_contacts_inquire_reply

typedef GPB_ENUM(protocol_frequent_contacts_inquire_reply_FieldNumber) {
  protocol_frequent_contacts_inquire_reply_FieldNumber_Operate = 1,
  protocol_frequent_contacts_inquire_reply_FieldNumber_FrequentContactsSupportMax = 2,
  protocol_frequent_contacts_inquire_reply_FieldNumber_ContactsItemArray = 3,
};

GPB_FINAL @interface protocol_frequent_contacts_inquire_reply : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes world time support display maximum number */
@property(nonatomic, readwrite) uint32_t frequentContactsSupportMax;

/** max: 20 frequent contact information */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<protocol_frequent_contacts_item*> *contactsItemArray;
/** The number of items in @c contactsItemArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger contactsItemArray_Count;

@end

/**
 * Fetches the raw value of a @c protocol_frequent_contacts_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_frequent_contacts_inquire_reply_Operate_RawValue(protocol_frequent_contacts_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_frequent_contacts_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_frequent_contacts_inquire_reply_Operate_RawValue(protocol_frequent_contacts_inquire_reply *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
