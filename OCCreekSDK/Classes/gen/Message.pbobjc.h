// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: message.proto

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

@class protocol_message_notify_switch_item;
GPB_ENUM_FWD_DECLARE(message_remind_type);
GPB_ENUM_FWD_DECLARE(notify_os_platform);
GPB_ENUM_FWD_DECLARE(notify_type);
GPB_ENUM_FWD_DECLARE(operate_type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - MessageRoot

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
GPB_FINAL @interface MessageRoot : GPBRootObject
@end

#pragma mark - protocol_message_notify_switch_item

typedef GPB_ENUM(protocol_message_notify_switch_item_FieldNumber) {
  protocol_message_notify_switch_item_FieldNumber_RemindType = 1,
  protocol_message_notify_switch_item_FieldNumber_NotifyFlag = 2,
};

GPB_FINAL @interface protocol_message_notify_switch_item : GPBMessage

/** 1bytes enumeration type of message */
@property(nonatomic, readwrite) enum message_remind_type remindType;

/** 1bytes reserved: notification type: 0 allows notification; 1: silent notification; 2: close notification */
@property(nonatomic, readwrite) enum notify_type notifyFlag;

@end

/**
 * Fetches the raw value of a @c protocol_message_notify_switch_item's @c remindType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_message_notify_switch_item_RemindType_RawValue(protocol_message_notify_switch_item *message);
/**
 * Sets the raw value of an @c protocol_message_notify_switch_item's @c remindType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_message_notify_switch_item_RemindType_RawValue(protocol_message_notify_switch_item *message, int32_t value);

/**
 * Fetches the raw value of a @c protocol_message_notify_switch_item's @c notifyFlag property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_message_notify_switch_item_NotifyFlag_RawValue(protocol_message_notify_switch_item *message);
/**
 * Sets the raw value of an @c protocol_message_notify_switch_item's @c notifyFlag property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_message_notify_switch_item_NotifyFlag_RawValue(protocol_message_notify_switch_item *message, int32_t value);

#pragma mark - protocol_message_notify_func_support_reply

typedef GPB_ENUM(protocol_message_notify_func_support_reply_FieldNumber) {
  protocol_message_notify_func_support_reply_FieldNumber_Sms = 1,
  protocol_message_notify_func_support_reply_FieldNumber_Email = 2,
  protocol_message_notify_func_support_reply_FieldNumber_Calendar = 3,
  protocol_message_notify_func_support_reply_FieldNumber_MissedCall = 4,
  protocol_message_notify_func_support_reply_FieldNumber_Facebook = 5,
  protocol_message_notify_func_support_reply_FieldNumber_Twitter = 6,
  protocol_message_notify_func_support_reply_FieldNumber_Instagram = 7,
  protocol_message_notify_func_support_reply_FieldNumber_Snapchat = 8,
  protocol_message_notify_func_support_reply_FieldNumber_Whatsapp = 9,
  protocol_message_notify_func_support_reply_FieldNumber_Line = 10,
  protocol_message_notify_func_support_reply_FieldNumber_Tiktok = 11,
  protocol_message_notify_func_support_reply_FieldNumber_Skype = 12,
  protocol_message_notify_func_support_reply_FieldNumber_Wechat = 13,
  protocol_message_notify_func_support_reply_FieldNumber_Fitbeing = 14,
  protocol_message_notify_func_support_reply_FieldNumber_MicrosoftTeams = 15,
  protocol_message_notify_func_support_reply_FieldNumber_TelegramMessenger = 16,
  protocol_message_notify_func_support_reply_FieldNumber_Messenger = 17,
  protocol_message_notify_func_support_reply_FieldNumber_Linkedin = 18,
  protocol_message_notify_func_support_reply_FieldNumber_Gmail = 19,
  protocol_message_notify_func_support_reply_FieldNumber_MicrosoftOutlook = 20,
  protocol_message_notify_func_support_reply_FieldNumber_GoogleChat = 21,
  protocol_message_notify_func_support_reply_FieldNumber_Qq = 22,
  protocol_message_notify_func_support_reply_FieldNumber_WhatsappBusiness = 23,
  protocol_message_notify_func_support_reply_FieldNumber_Youtube = 24,
  protocol_message_notify_func_support_reply_FieldNumber_Uber = 25,
  protocol_message_notify_func_support_reply_FieldNumber_UberEats = 26,
  protocol_message_notify_func_support_reply_FieldNumber_DoorDashMissing = 27,
  protocol_message_notify_func_support_reply_FieldNumber_BancoGeneral = 28,
  protocol_message_notify_func_support_reply_FieldNumber_BacBank = 29,
  protocol_message_notify_func_support_reply_FieldNumber_GoogleMaps = 30,
  protocol_message_notify_func_support_reply_FieldNumber_AmazonShopping = 31,
  protocol_message_notify_func_support_reply_FieldNumber_Spotify = 32,
  protocol_message_notify_func_support_reply_FieldNumber_Discord = 33,
  protocol_message_notify_func_support_reply_FieldNumber_RemindTypeMax = 34,
};

/**
 * Get the device support message type
 **/
GPB_FINAL @interface protocol_message_notify_func_support_reply : GPBMessage

@property(nonatomic, readwrite) BOOL sms;

@property(nonatomic, readwrite) BOOL email;

@property(nonatomic, readwrite) BOOL calendar;

@property(nonatomic, readwrite) BOOL missedCall;

@property(nonatomic, readwrite) BOOL facebook;

@property(nonatomic, readwrite) BOOL twitter;

@property(nonatomic, readwrite) BOOL instagram;

@property(nonatomic, readwrite) BOOL snapchat;

@property(nonatomic, readwrite) BOOL whatsapp;

@property(nonatomic, readwrite) BOOL line;

@property(nonatomic, readwrite) BOOL tiktok;

@property(nonatomic, readwrite) BOOL skype;

@property(nonatomic, readwrite) BOOL wechat;

@property(nonatomic, readwrite) BOOL fitbeing;

@property(nonatomic, readwrite) BOOL microsoftTeams;

@property(nonatomic, readwrite) BOOL telegramMessenger;

@property(nonatomic, readwrite) BOOL messenger;

@property(nonatomic, readwrite) BOOL linkedin;

@property(nonatomic, readwrite) BOOL gmail;

@property(nonatomic, readwrite) BOOL microsoftOutlook;

@property(nonatomic, readwrite) BOOL googleChat;

@property(nonatomic, readwrite) BOOL qq;

@property(nonatomic, readwrite) BOOL whatsappBusiness;

@property(nonatomic, readwrite) BOOL youtube;

@property(nonatomic, readwrite) BOOL uber;

@property(nonatomic, readwrite) BOOL uberEats;

@property(nonatomic, readwrite) BOOL doorDashMissing;

@property(nonatomic, readwrite) BOOL bancoGeneral;

@property(nonatomic, readwrite) BOOL bacBank;

@property(nonatomic, readwrite) BOOL googleMaps;

@property(nonatomic, readwrite) BOOL amazonShopping;

@property(nonatomic, readwrite) BOOL spotify;

@property(nonatomic, readwrite) BOOL discord;

@property(nonatomic, readwrite) BOOL remindTypeMax;

@end

#pragma mark - protocol_message_notify_data

typedef GPB_ENUM(protocol_message_notify_data_FieldNumber) {
  protocol_message_notify_data_FieldNumber_Operate = 1,
  protocol_message_notify_data_FieldNumber_OsPlatform = 2,
  protocol_message_notify_data_FieldNumber_NotifyFlag = 3,
  protocol_message_notify_data_FieldNumber_RemindType = 4,
  protocol_message_notify_data_FieldNumber_ContactText = 5,
  protocol_message_notify_data_FieldNumber_MsgContent = 6,
};

/**
 * app message reminder
 **/
GPB_FINAL @interface protocol_message_notify_data : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: setting */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes platform type */
@property(nonatomic, readwrite) enum notify_os_platform osPlatform;

/** 1bytes reserved: notification type: 0 allows notification; 1: silent notification; 2: close notification */
@property(nonatomic, readwrite) enum notify_type notifyFlag;

/** 1bytes message enumeration type */
@property(nonatomic, readwrite) enum message_remind_type remindType;

/** max:64 contact name */
@property(nonatomic, readwrite, copy, null_resettable) NSData *contactText;

/** max:250 message content */
@property(nonatomic, readwrite, copy, null_resettable) NSData *msgContent;

@end

/**
 * Fetches the raw value of a @c protocol_message_notify_data's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_message_notify_data_Operate_RawValue(protocol_message_notify_data *message);
/**
 * Sets the raw value of an @c protocol_message_notify_data's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_message_notify_data_Operate_RawValue(protocol_message_notify_data *message, int32_t value);

/**
 * Fetches the raw value of a @c protocol_message_notify_data's @c osPlatform property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_message_notify_data_OsPlatform_RawValue(protocol_message_notify_data *message);
/**
 * Sets the raw value of an @c protocol_message_notify_data's @c osPlatform property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_message_notify_data_OsPlatform_RawValue(protocol_message_notify_data *message, int32_t value);

/**
 * Fetches the raw value of a @c protocol_message_notify_data's @c notifyFlag property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_message_notify_data_NotifyFlag_RawValue(protocol_message_notify_data *message);
/**
 * Sets the raw value of an @c protocol_message_notify_data's @c notifyFlag property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_message_notify_data_NotifyFlag_RawValue(protocol_message_notify_data *message, int32_t value);

/**
 * Fetches the raw value of a @c protocol_message_notify_data's @c remindType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_message_notify_data_RemindType_RawValue(protocol_message_notify_data *message);
/**
 * Sets the raw value of an @c protocol_message_notify_data's @c remindType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_message_notify_data_RemindType_RawValue(protocol_message_notify_data *message, int32_t value);

#pragma mark - protocol_message_notify_data_inquire_reply

typedef GPB_ENUM(protocol_message_notify_data_inquire_reply_FieldNumber) {
  protocol_message_notify_data_inquire_reply_FieldNumber_FuncTable = 1,
  protocol_message_notify_data_inquire_reply_FieldNumber_Operate = 2,
};

GPB_FINAL @interface protocol_message_notify_data_inquire_reply : GPBMessage

/** 1bytes function table */
@property(nonatomic, readwrite) uint32_t funcTable;

/** 1bytes operation type 0: invalid operation 1: query 2: setting */
@property(nonatomic, readwrite) enum operate_type operate;

@end

/**
 * Fetches the raw value of a @c protocol_message_notify_data_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_message_notify_data_inquire_reply_Operate_RawValue(protocol_message_notify_data_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_message_notify_data_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_message_notify_data_inquire_reply_Operate_RawValue(protocol_message_notify_data_inquire_reply *message, int32_t value);

#pragma mark - protocol_message_notify_switch

typedef GPB_ENUM(protocol_message_notify_switch_FieldNumber) {
  protocol_message_notify_switch_FieldNumber_Operate = 1,
  protocol_message_notify_switch_FieldNumber_NotifySwitch = 2,
  protocol_message_notify_switch_FieldNumber_ItemsArray = 3,
  protocol_message_notify_switch_FieldNumber_AccessDetailsDirectSwitch = 4,
};

/**
 * Set message switch
 **/
GPB_FINAL @interface protocol_message_notify_switch : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: setting */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes app message notification switch */
@property(nonatomic, readwrite) BOOL notifySwitch;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<protocol_message_notify_switch_item*> *itemsArray;
/** The number of items in @c itemsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger itemsArray_Count;

/** 1bytes Whether to directly enter the message details or pop up the application icon switch */
@property(nonatomic, readwrite) BOOL accessDetailsDirectSwitch;

@end

/**
 * Fetches the raw value of a @c protocol_message_notify_switch's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_message_notify_switch_Operate_RawValue(protocol_message_notify_switch *message);
/**
 * Sets the raw value of an @c protocol_message_notify_switch's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_message_notify_switch_Operate_RawValue(protocol_message_notify_switch *message, int32_t value);

#pragma mark - protocol_message_notify_switch_inquire_reply

typedef GPB_ENUM(protocol_message_notify_switch_inquire_reply_FieldNumber) {
  protocol_message_notify_switch_inquire_reply_FieldNumber_Operate = 1,
  protocol_message_notify_switch_inquire_reply_FieldNumber_NotifySwitch = 2,
  protocol_message_notify_switch_inquire_reply_FieldNumber_ItemsArray = 3,
  protocol_message_notify_switch_inquire_reply_FieldNumber_AccessDetailsDirectSwitch = 4,
  protocol_message_notify_switch_inquire_reply_FieldNumber_FuncTable = 5,
};

GPB_FINAL @interface protocol_message_notify_switch_inquire_reply : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: setting */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes app message notification switch */
@property(nonatomic, readwrite) BOOL notifySwitch;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<protocol_message_notify_switch_item*> *itemsArray;
/** The number of items in @c itemsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger itemsArray_Count;

/** 1bytes Whether to directly enter the message details or pop up the application icon switch */
@property(nonatomic, readwrite) BOOL accessDetailsDirectSwitch;

/** Function table */
@property(nonatomic, readwrite) uint32_t funcTable;

@end

/**
 * Fetches the raw value of a @c protocol_message_notify_switch_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_message_notify_switch_inquire_reply_Operate_RawValue(protocol_message_notify_switch_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_message_notify_switch_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_message_notify_switch_inquire_reply_Operate_RawValue(protocol_message_notify_switch_inquire_reply *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)