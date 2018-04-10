//
//  AdapterCNY.m
//  AdapterPatternDemo-Simple
//
//  Created by 魏欣宇 on 2018/4/10.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "AdapterCNY.h"

@implementation AdapterCNY

#pragma mark - TargetCNYProtocol协议方法
- (float)obtainCNY
{
    return [self obtainUSD] * 6.61;
}

@end
