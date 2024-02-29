//
//  PhoneModel.h
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/23.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PhoneModel : NSObject
@property (nonatomic, copy) NSString *contactName;
@property (nonatomic, copy) NSString *phoneNumber;

- (NSDictionary *)toDictionary ;
@end

NS_ASSUME_NONNULL_END
