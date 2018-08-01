//
//  FireViewController.m
//  Travels
//
//  Created by ZQWFMac on 2018/7/26.
//  Copyright © 2018年 ZQWFMac. All rights reserved.
//

#import "FireViewController.h"
#import "AppDelegate.h"

@interface FireViewController ()

@end

@implementation FireViewController

-(void)setNavigation{

    UIButton *menuBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    menuBtn.frame = CGRectMake(0, 0, 30, 30);
    [menuBtn setImage:[UIImage imageNamed:@"UserPlaceHolder"] forState:UIControlStateNormal];
    menuBtn.layer.cornerRadius = 15;
    [menuBtn addTarget:self action:@selector(leftBarAction) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:menuBtn];

}
- (void)leftBarAction{
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if (tempAppDelegate.LeftSlideVC.closed){
        [tempAppDelegate.LeftSlideVC openLeftView];
    }
    else{
        [tempAppDelegate.LeftSlideVC closeLeftView];
    }
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [tempAppDelegate.LeftSlideVC setPanEnabled:NO];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [tempAppDelegate.LeftSlideVC setPanEnabled:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setNavigation];
    
    //git代码上传更新测试 再次上传测试
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
