//
//  ViewController.m
//  ProtocolDemo
//
//  Created by 于朝盼 on 2019/3/27.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "ViewController.h"
#import "CommonProtocol.h"
#import "MHDProtocolManger.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(80, 100, 100, 40)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)clickAction:(UIButton *)btn{
    Class cls = [[MHDProtocolManger sharedInstance] classForProtocol:@protocol(A_VC_Protocol)];
    UIViewController<A_VC_Protocol> *B_VC = [[cls alloc] init];
    [B_VC action_A:@"222"];
}

@end
