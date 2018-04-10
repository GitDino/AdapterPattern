//
//  DOBaseTableView.m
//  TableViewDemo
//
//  Created by 魏欣宇 on 2018/4/10.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DOBaseTableView.h"

@interface DOBaseTableView ()

@property (nonatomic, strong) NSMutableArray *data_array;

@end

@implementation DOBaseTableView

#pragma mark - Life Cycle
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor lightGrayColor];
        self.data_array = [NSMutableArray array];
        self.dataSource = self;
        self.delegate = self;
    }
    return self;
}

#pragma mark - BaseTableViewProtocol协议方法
- (id)obtainDataWithIndex:(NSIndexPath *)indexPath
{
    return self.data_array[indexPath.row];
}

- (NSArray *)obtainDataArray
{
    return self.data_array;
}

- (void)refreshData:(NSMutableArray *)data_array
{
    if (self.data_array == nil)
    {
        self.data_array = data_array;
    }
    else
    {
        [self.data_array removeAllObjects];
        [self.data_array addObjectsFromArray:data_array];
    }
    
    [self reloadData];
}

#pragma mark - UITableViewDataSource数据源方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data_array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"BaseTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

@end
