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

@end

@implementation DORootVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"TableView-Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
//    self.data_array = [NSMutableArray arrayWithObjects:@"测试数据1", @"你真的很棒", nil];
    
    self.data_array = [NSMutableArray array];
    NSArray *test_array = @[@[@"3", @"2"], @[@"1"]];
    [self.data_array addObjectsFromArray:test_array];
    
    DOCustomTableView *custom_tableView = [[DOCustomTableView alloc] initWithFrame:self.view.bounds];
    
    [custom_tableView refreshData:self.data_array];
    
    [self.view addSubview:custom_tableView];
}

@end
