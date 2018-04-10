//
//  DOAnotherAdapter.m
//  AdapterPatternDemo
//
//  Created by 魏欣宇 on 2018/4/10.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DOAnotherAdapter.h"
#import "DOAnotherTargetModel.h"

@implementation DOAnotherAdapter

- (UIColor *)viewColor
{
    DOAnotherTargetModel *another_model = self.target_model;
    
    if ([another_model.viewColor isEqualToString:@"green"])
    {
        return [UIColor greenColor];
    }
    else
    {
        return [UIColor whiteColor];
    }
}

- (NSString *)userName
{
    DOAnotherTargetModel *another_model = self.target_model;
    return another_model.userName;
}

- (NSString *)userAge
{
    DOAnotherTargetModel *another_model = self.target_model;
    return another_model.userAge;
}

@end
