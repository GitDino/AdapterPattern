//
//  DOTargetView.m
//  AdapterPatternDemo
//
//  Created by 魏欣宇 on 2018/4/10.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DOTargetView.h"

//#import "DOTargetModel.h"

@interface DOTargetView ()

@property (nonatomic, strong) UIView *color_view;

@property (nonatomic, strong) UILabel *name_label;

@property (nonatomic, strong) UILabel *age_label;

@end

@implementation DOTargetView

#pragma mark - Life Cycle
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor blueColor];
        
        [self addSubview:self.color_view];
        [self addSubview:self.name_label];
        [self addSubview:self.age_label];
    }
    return self;
}

//#pragma mark - Setter Cycle
//- (void)setTarget_model:(DOTargetModel *)target_model
//{
//    _target_model = target_model;
//
//    self.color_view.backgroundColor = _target_model.viewColor;
//    self.name_label.text = _target_model.userName;
//    self.age_label.text = _target_model.userAge;
//}

- (void)loadModel:(id<DOTargetProtocol>) model
{
    self.color_view.backgroundColor = model.viewColor;
    self.name_label.text = model.userName;
    self.age_label.text = model.userAge;
}

#pragma mark - Getter Cycle
- (UIView *)color_view
{
    if (!_color_view)
    {
        _color_view = [[UIView alloc] initWithFrame:CGRectMake(0, 64, 50, 50)];
    }
    return _color_view;
}

- (UILabel *)name_label
{
    if (!_name_label)
    {
        _name_label = [[UILabel alloc] initWithFrame:CGRectMake(12, 120, 100, 30)];
    }
    return _name_label;
}

- (UILabel *)age_label
{
    if (!_age_label)
    {
        _age_label = [[UILabel alloc] initWithFrame:CGRectMake(12, 160, 100, 30)];
    }
    return _age_label;
}

@end
