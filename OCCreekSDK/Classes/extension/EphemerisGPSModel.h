//
//  EphemerisGPSModel.h
//  OCCreekSDK
//
//  Created by bean on 2024/4/24.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EphemerisGPSModel : NSObject


/// Whether the location is valid
@property (nonatomic, assign) BOOL isVaild;

/// Latitude magnification 100000 times
@property (nonatomic, assign) NSInteger latitude;

/// 100,000 times longitude magnification
@property (nonatomic, assign) NSInteger longitude;

/// Altitude, in meters
@property (nonatomic, assign) NSInteger altitude;

- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
