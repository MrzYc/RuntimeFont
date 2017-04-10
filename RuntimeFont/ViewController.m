//
//  ViewController.m
//  RuntimeFont
//
//  Created by 赵永闯 on 2017/4/10.
//  Copyright © 2017年 赵永闯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 100)];
    label.text = @"我要适配的字体字体我要适配的字体字体";
    label.font = [UIFont systemFontOfSize:16];
    
    [self.view addSubview:label];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
