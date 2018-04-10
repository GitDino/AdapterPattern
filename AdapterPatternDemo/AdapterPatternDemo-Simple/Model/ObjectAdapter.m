//
//  ObjectAdapter.m
//  AdapterPatternDemo-Simple
//
//  Created by 魏欣宇 on 2018/4/10.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "ObjectAdapter.h"

@interface ObjectAdapter ()

@property (nonatomic, strong) AdapterUSD *adapter_USD;

@end

@implementation ObjectAdapter

#pragma mark - Public Cycle
- (instancetype)initWithAdapter:(AdapterUSD *) adapter_USD
{
    if (self = [super init])
    {
        _adapter_USD = adapter_USD;
    }
    return self;
}

#pragma mark - TargetCNYProtocol协议方法
- (float)obtainCNY
{
    return [self.adapter_USD obtainUSD] * 6.61;
}


@end
