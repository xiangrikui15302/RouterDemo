//
//  AViewController.m
//  ProtocolDemo
//
//  Created by 于朝盼 on 2019/3/27.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "AViewController.h"
#import "MHDProtocolManger.h"

@interface AViewController ()

@end

@implementation AViewController

+(void)load{
    [[MHDProtocolManger sharedInstance] registerProtocol:@protocol(A_VC_Protocol) forClass:[self class]];

    
}

- (instancetype)init{
    return [super init];
}
- (void)viewDidLoad {
    [super viewDidLoad];

}



- (void)action_A:(nonnull NSString *)para1 {
    NSLog(@"%@",para1);
}


@end
