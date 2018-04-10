//
//  DOTargetView.h
//  AdapterPatternDemo
//
//  Created by 魏欣宇 on 2018/4/10.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import <UIKit/UIKit.h>
//@class DOTargetModel;
#import "DOTargetProtocol.h"

@interface DOTargetView : UIView

//@property (nonatomic, strong) DOTargetModel *target_model;

- (void)loadModel:(id<DOTargetProtocol>) model;

@end
