//
//  MHDProtocolManger.m
//  Muheda
//
//  Created by robin qyh on 2018/4/20.
//  Copyright © 2018年 于朝盼. All rights reserved.
//

#import "MHDProtocolManger.h"

@interface MHDProtocolManger()

@property (nonatomic, strong) NSMutableDictionary *protocolCache;

@end

@implementation MHDProtocolManger

+ (instancetype)sharedInstance
{
    static MHDProtocolManger *mediator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [[MHDProtocolManger alloc] init];
    });
    return mediator;
}

-(NSMutableDictionary *)protocolCache{
    if (!_protocolCache) {
        _protocolCache = [NSMutableDictionary new];
    }
    return _protocolCache;
}

- (void)registerProtocol:(Protocol *)proto forClass:(Class)cls {
    [self.protocolCache setObject:cls forKey:NSStringFromProtocol(proto)];
}

- (Class)classForProtocol:(Protocol *)proto {
    return self.protocolCache[NSStringFromProtocol(proto)];
}

@end
