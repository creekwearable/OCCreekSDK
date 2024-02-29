// To parse this JSON:
//
//   NSError *error;
//   ScanDeviceArray *welcome = ScanDeviceArrayFromJSON(json, NSUTF8Encoding, &error);

#import <Foundation/Foundation.h>


@class ScanDeviceModel;
@class DeviceModel;

NS_ASSUME_NONNULL_BEGIN

typedef NSArray<ScanDeviceModel *> ScanDeviceArray;

#pragma mark - Top-level marshaling functions

ScanDeviceArray *_Nullable ScanDeviceArrayFromData(NSData *data, NSError **error);
ScanDeviceArray *_Nullable ScanDeviceArrayFromJSON(NSString *json, NSError **error);
NSData    *_Nullable ScanDeviceArrayToData(ScanDeviceArray *welcome, NSError **error);
NSString  *_Nullable ScanDeviceArrayToJSON(ScanDeviceArray *welcome, NSError **error);


#pragma mark - Object interfaces

@interface ScanDeviceModel : NSObject
@property (nonatomic, strong) DeviceModel *device;
@property (nonatomic, assign) NSInteger firmwareID;
@property (nonatomic, copy)   NSString *macAddress;
@property (nonatomic, assign) NSInteger deviceColor;
@property (nonatomic, assign) NSInteger rssi;
@property (nonatomic, assign) BOOL isLastBind;

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface DeviceModel : NSObject
@property (nonatomic, copy)   NSString *identifier;
@property (nonatomic, copy)   NSString *name;
@property (nonatomic, assign) NSInteger type;
@end

NS_ASSUME_NONNULL_END
