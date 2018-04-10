//
//  DOTargetProtocol.h
//  AdapterPatternDemo
//
//  Created by 魏欣宇 on 2018/4/10.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DOTargetProtocol <NSObject>

- (UIColor *)viewColor;

- (NSString *)userName;

- (NSString *)userAge;

@end
