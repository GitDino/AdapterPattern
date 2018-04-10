//
//  DOTargetAdapter.m
//  AdapterPatternDemo
//
//  Created by 魏欣宇 on 2018/4/10.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DOTargetAdapter.h"

@implementation DOTargetAdapter

- (instancetype)initWithModel:(id) target_model
{
    if (self = [super init])
    {
        self.target_model = target_model;
    }
    return self;
}

#pragma mark - DOTargetProtocol协议方法
- (UIColor *)viewColor
{
    return nil;
}

- (NSString *)userName
{
    return nil;
}

- (NSString *)userAge
{
    return nil;
}

@end
