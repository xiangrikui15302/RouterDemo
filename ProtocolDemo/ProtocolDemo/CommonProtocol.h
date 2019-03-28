//
//  AProtocol.h
//  ProtocolDemo
//
//  Created by 于朝盼 on 2019/3/27.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol A_VC_Protocol <NSObject>
-(void)action_A:(NSString*)para1;
@end

@protocol B_VC_Protocol <NSObject>
-(void)action_B:(NSString*)para para2:(NSInteger)para2 para3:(NSInteger)para3 para4:(NSInteger)para4;
@end

NS_ASSUME_NONNULL_END
