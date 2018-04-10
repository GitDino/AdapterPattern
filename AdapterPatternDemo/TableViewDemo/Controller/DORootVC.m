//
//  DORootVC.m
//  TableViewDemo
//
//  Created by 魏欣宇 on 2018/4/10.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DORootVC.h"

#import "DOCustomTableView.h"

@interface DORootVC ()

@property (nonatomic, strong) NSMutableArray *data_array;

@property (nonatomic, strong) DOCustomTableView *custom_tableView;

@end

@implementation DORootVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"TableView-Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.custom_tableView = [[DOCustomTableView alloc] initWithFrame:self.view.bounds];
    
    [self.view addSubview:self.custom_tableView];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 200, 50, 50)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(clickLoadDataAction:) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - Event Cycle
- (void)clickLoadDataAction:(UIButton *) btn
{
    self.data_array = [NSMutableArray array];
    NSArray *test_array = @[@[@"3", @"2"], @[@"1"]];
    [self.data_array addObjectsFromArray:test_array];
    
    [self.custom_tableView refreshData:self.data_array];
}

@end
