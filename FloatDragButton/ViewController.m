//
//  ViewController.m
//  FloatDragButton
//
//  Created by rocky on 16/10/11.
//  Copyright © 2016年 RockyFung. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+FloatDrag.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(50, 20, 200, 400)];
    bgView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:bgView];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(5, 100,60, 60)];
    btn.backgroundColor = [UIColor redColor];
    btn.tag = 0;
    btn.layer.cornerRadius = 8;
    [btn setDragEnable:YES];
    [btn setAdsorbEnable:YES];
    [self.view addSubview:btn];
    [self.view bringSubviewToFront:btn];
    [btn addTarget:self action:@selector(showTag:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(5, 200,60, 60)];
    btn1.backgroundColor = [UIColor blackColor];
    btn1.tag = 1;
    btn1.layer.cornerRadius = 8;
    [btn1 setDragEnable:YES];
    [btn1 setAdsorbEnable:NO];
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(showTag:) forControlEvents:UIControlEventTouchUpInside];
    
    
}

-(void)showTag:(UIButton *)sender
{
    NSLog(@"button.tag >> %@",@(sender.tag));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
