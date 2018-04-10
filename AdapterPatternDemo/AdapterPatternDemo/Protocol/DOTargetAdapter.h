//
//  DOTargetAdapter.h
//  AdapterPatternDemo
//
//  Created by 魏欣宇 on 2018/4/10.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DOTargetProtocol.h"

@interface DOTargetAdapter : NSObject<DOTargetProtocol>

@property (nonatomic, strong) id target_model;

- (instancetype)initWithModel:(id) target_model;

@end
