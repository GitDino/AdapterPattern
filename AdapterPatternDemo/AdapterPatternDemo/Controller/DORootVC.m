//
//  DORootVC.m
//  AdapterPatternDemo
//
//  Created by 魏欣宇 on 2018/4/9.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DORootVC.h"

//#import "DOTargetModel.h"
#import "DOAnotherTargetModel.h"
#import "DOAnotherAdapter.h"

#import "DOTargetView.h"

@interface DORootVC ()

@end

@implementation DORootVC

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"适配器模式";
    self.view.backgroundColor = [UIColor whiteColor];
    
//    DOTargetModel *target_model = [[DOTargetModel alloc] init];
//    target_model.viewColor = [UIColor greenColor];
//    target_model.userName = @"张三";
//    target_model.userAge = @"100岁";
    DOAnotherTargetModel *another_model = [[DOAnotherTargetModel alloc] init];
    another_model.viewColor = @"green";
    another_model.userName = @"里斯";
    another_model.userAge = @"34岁";
    
    DOTargetView *target_view = [[DOTargetView alloc] initWithFrame:self.view.bounds];
//    target_view.target_model = target_model;
    
    DOAnotherAdapter *another_adapter = [[DOAnotherAdapter alloc] initWithModel:another_model];
    [target_view loadModel:another_adapter];
    
    [self.view addSubview:target_view];
}

@end
