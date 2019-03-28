//
//  MHDProtocolManger.h
//  Muheda
//
//  Created by robin qyh on 2018/4/20.
//  Copyright © 2018年 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MHDProtocolManger : NSObject

+ (instancetype)sharedInstance;
- (void)registerProtocol:(Protocol *)proto forClass:(Class)cls;
- (Class)classForProtocol:(Protocol *)proto;
@end
