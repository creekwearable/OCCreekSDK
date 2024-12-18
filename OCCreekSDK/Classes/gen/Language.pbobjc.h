// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: language.proto

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

GPB_ENUM_FWD_DECLARE(language);
GPB_ENUM_FWD_DECLARE(operate_type);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - LanguageRoot

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
GPB_FINAL @interface LanguageRoot : GPBRootObject
@end

#pragma mark - protocol_language_operate

typedef GPB_ENUM(protocol_language_operate_FieldNumber) {
  protocol_language_operate_FieldNumber_Operate = 1,
  protocol_language_operate_FieldNumber_CurLanguage = 2,
};

GPB_FINAL @interface protocol_language_operate : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: set */
@property(nonatomic, readwrite) enum operate_type operate;

/** 1bytes set language, 0x01 Chinese 0x02 English... */
@property(nonatomic, readwrite) enum language curLanguage;

@end

/**
 * Fetches the raw value of a @c protocol_language_operate's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_language_operate_Operate_RawValue(protocol_language_operate *message);
/**
 * Sets the raw value of an @c protocol_language_operate's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_language_operate_Operate_RawValue(protocol_language_operate *message, int32_t value);

/**
 * Fetches the raw value of a @c protocol_language_operate's @c curLanguage property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_language_operate_CurLanguage_RawValue(protocol_language_operate *message);
/**
 * Sets the raw value of an @c protocol_language_operate's @c curLanguage property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_language_operate_CurLanguage_RawValue(protocol_language_operate *message, int32_t value);

#pragma mark - protocol_language_inquire_reply

typedef GPB_ENUM(protocol_language_inquire_reply_FieldNumber) {
  protocol_language_inquire_reply_FieldNumber_Operate = 1,
  protocol_language_inquire_reply_FieldNumber_CurLanguage = 2,
  protocol_language_inquire_reply_FieldNumber_ChineseSupport = 3,
  protocol_language_inquire_reply_FieldNumber_EnglishSupport = 4,
  protocol_language_inquire_reply_FieldNumber_GermanSupport = 5,
  protocol_language_inquire_reply_FieldNumber_SpanishSupport = 6,
  protocol_language_inquire_reply_FieldNumber_ItalianSupport = 7,
  protocol_language_inquire_reply_FieldNumber_JanpaneseSupport = 8,
  protocol_language_inquire_reply_FieldNumber_RussianSupport = 9,
  protocol_language_inquire_reply_FieldNumber_PortugueseSupport = 10,
  protocol_language_inquire_reply_FieldNumber_FrenchSupport = 11,
  protocol_language_inquire_reply_FieldNumber_KoreanSupport = 12,
  protocol_language_inquire_reply_FieldNumber_PolishSupport = 13,
  protocol_language_inquire_reply_FieldNumber_CzechSupport = 14,
  protocol_language_inquire_reply_FieldNumber_SlovakSupport = 15,
  protocol_language_inquire_reply_FieldNumber_HungarianSupport = 16,
  protocol_language_inquire_reply_FieldNumber_GreekSupport = 17,
  protocol_language_inquire_reply_FieldNumber_LithuanianSupport = 18,
  protocol_language_inquire_reply_FieldNumber_LatvianSupport = 19,
  protocol_language_inquire_reply_FieldNumber_EstonianSupport = 20,
  protocol_language_inquire_reply_FieldNumber_BulgarianSupport = 21,
  protocol_language_inquire_reply_FieldNumber_MalaySupport = 22,
  protocol_language_inquire_reply_FieldNumber_IndonesianSupport = 23,
  protocol_language_inquire_reply_FieldNumber_ThaiSupport = 24,
  protocol_language_inquire_reply_FieldNumber_VietnameseSupport = 25,
  protocol_language_inquire_reply_FieldNumber_HebrewSupport = 26,
  protocol_language_inquire_reply_FieldNumber_DevanagariSupport = 27,
  protocol_language_inquire_reply_FieldNumber_TurkeySupport = 28,
};

GPB_FINAL @interface protocol_language_inquire_reply : GPBMessage

/** 1bytes operation type 0: invalid operation 1: query 2: setting */
@property(nonatomic, readwrite) enum operate_type operate;

@property(nonatomic, readwrite) enum language curLanguage;

/** 1bytes Chinese */
@property(nonatomic, readwrite) BOOL chineseSupport;

/** 1bytes English */
@property(nonatomic, readwrite) BOOL englishSupport;

/** 1bytes German */
@property(nonatomic, readwrite) BOOL germanSupport;

/** 1bytes Spanish */
@property(nonatomic, readwrite) BOOL spanishSupport;

/** 1bytes Italian */
@property(nonatomic, readwrite) BOOL italianSupport;

/** 1bytes Japanese */
@property(nonatomic, readwrite) BOOL janpaneseSupport;

/** 1bytes Russian */
@property(nonatomic, readwrite) BOOL russianSupport;

/** 1bytes Portuguese */
@property(nonatomic, readwrite) BOOL portugueseSupport;

/** 1bytes French */
@property(nonatomic, readwrite) BOOL frenchSupport;

/** 1bytes Korean */
@property(nonatomic, readwrite) BOOL koreanSupport;

/** 1bytes Polish */
@property(nonatomic, readwrite) BOOL polishSupport;

/** 1bytes Czech */
@property(nonatomic, readwrite) BOOL czechSupport;

/** 1bytes Slovak */
@property(nonatomic, readwrite) BOOL slovakSupport;

/** 1bytes Hungarian */
@property(nonatomic, readwrite) BOOL hungarianSupport;

/** 1bytes Greek */
@property(nonatomic, readwrite) BOOL greekSupport;

/** 1bytes Lithuanian */
@property(nonatomic, readwrite) BOOL lithuanianSupport;

/** 1bytes Latvian */
@property(nonatomic, readwrite) BOOL latvianSupport;

/** 1bytes Estonian */
@property(nonatomic, readwrite) BOOL estonianSupport;

/** 1bytes Bulgarian */
@property(nonatomic, readwrite) BOOL bulgarianSupport;

/** 1bytes Malay */
@property(nonatomic, readwrite) BOOL malaySupport;

/** 1bytes Indonesian */
@property(nonatomic, readwrite) BOOL indonesianSupport;

/** 1bytes Thai */
@property(nonatomic, readwrite) BOOL thaiSupport;

/** 1bytes Vietnamese */
@property(nonatomic, readwrite) BOOL vietnameseSupport;

/** 1bytes Hebrew */
@property(nonatomic, readwrite) BOOL hebrewSupport;

/** 1bytes Devanagari */
@property(nonatomic, readwrite) BOOL devanagariSupport;

/** 1bytes Turkish */
@property(nonatomic, readwrite) BOOL turkeySupport;

@end

/**
 * Fetches the raw value of a @c protocol_language_inquire_reply's @c operate property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_language_inquire_reply_Operate_RawValue(protocol_language_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_language_inquire_reply's @c operate property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_language_inquire_reply_Operate_RawValue(protocol_language_inquire_reply *message, int32_t value);

/**
 * Fetches the raw value of a @c protocol_language_inquire_reply's @c curLanguage property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t protocol_language_inquire_reply_CurLanguage_RawValue(protocol_language_inquire_reply *message);
/**
 * Sets the raw value of an @c protocol_language_inquire_reply's @c curLanguage property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void Setprotocol_language_inquire_reply_CurLanguage_RawValue(protocol_language_inquire_reply *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
