//
//  ViewController.m
//  MSViewBorder
//
//  Created by ms on 2019/6/12.
//  Copyright © 2019 ms. All rights reserved.
//

#import "ViewController.h"

#import "UIView+MSViewBorder.h"

#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UILabel *lab  = [[UILabel alloc] init];
    
    lab.font = [UIFont systemFontOfSize:14];
    
    lab.text = @"你好，我给lab添加了上下两个边框";
    
    [self.view addSubview:lab];
    
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.top.mas_equalTo(200);
        make.height.mas_equalTo(50);
    }];
    
    [lab addLineDirection:(MSLineDirectionTop|MSLineDirectionBottom) BackgroundColor:[UIColor redColor] HeightOrWidth:2];
    
    

    
}


@end
