//
//  ViewController.m
//  HamburgerButton
//
//  Created by Danis on 14/11/15.
//  Copyright (c) 2014年 danis. All rights reserved.
//

#import "ViewController.h"
#import "HamburgerButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithRed:254/255.0 green:206/255.0 blue:72/255.0 alpha:1];
    HamburgerButton *btn = [[HamburgerButton alloc]initWithFrame:CGRectMake(20, 50, 80, 80)];
    btn.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    [btn addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:btn];
}
-(void)action:(HamburgerButton *)sender{
    sender.showMenu = !sender.showMenu;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
