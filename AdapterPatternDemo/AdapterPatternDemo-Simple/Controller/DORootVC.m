//
//  DORootVC.m
//  AdapterPatternDemo-Simple
//
//  Created by 魏欣宇 on 2018/4/9.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DORootVC.h"
#import "AdapterCNY.h"

#import "ObjectAdapter.h"
#import "AdapterUSD.h"

@interface DORootVC ()

@end

@implementation DORootVC

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"简单适配器模式";
    self.view.backgroundColor = [UIColor greenColor];
    
    //类适配器
    AdapterCNY *adapter_CNY = [[AdapterCNY alloc] init];
    float result_CNY = [adapter_CNY obtainCNY];
    NSLog(@"CNY = %.2f", result_CNY);
    
    //对象适配器
    ObjectAdapter *adapter_CNY2 = [[ObjectAdapter alloc] initWithAdapter:[AdapterUSD new]];
    float result_CNY2 = [adapter_CNY2 obtainCNY];
    NSLog(@"CNY2 = %.2f", result_CNY2);
}

@end
