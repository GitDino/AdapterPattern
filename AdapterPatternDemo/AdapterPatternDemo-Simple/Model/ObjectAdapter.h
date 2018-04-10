//
//  ObjectAdapter.h
//  AdapterPatternDemo-Simple
//
//  Created by 魏欣宇 on 2018/4/10.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TargetCNYProtocol.h"
#import "AdapterUSD.h"

@interface ObjectAdapter : NSObject<TargetCNYProtocol>

- (instancetype)initWithAdapter:(AdapterUSD *) adapter_USD;

@end
