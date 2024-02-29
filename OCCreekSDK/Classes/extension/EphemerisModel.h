//
//  EphemerisModel.h
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EphemerisModel : NSObject


/// gps model
@property (nonatomic, copy) NSString *socName;

/// Start time :(UTC unit seconds) Send 0
@property (nonatomic, assign) NSInteger startUtcTime;

/// End time :(UTC seconds) Send 0
@property (nonatomic, assign) NSInteger endUtcTime;

/// Whether the location is valid
@property (nonatomic, assign) BOOL isVaild;

/// Latitude magnification 100000 times
@property (nonatomic, assign) NSInteger latitude;

/// Latitude S south N North
@property (nonatomic, copy) NSString *latitudeDire;

/// 100,000 times longitude magnification
@property (nonatomic, assign) NSInteger longitude;

/// Longitude direction W W longitude E longitude
@property (nonatomic, copy) NSString *longitudeDire;

/// Altitude, in meters
@property (nonatomic, assign) NSInteger altitude;

/// Ephemeris file size
@property (nonatomic, assign) NSInteger fileSize;

/// Address of the original ephemeris file
@property (nonatomic, copy) NSString *filePath;


- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
