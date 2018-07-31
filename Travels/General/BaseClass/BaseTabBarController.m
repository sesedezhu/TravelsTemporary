//
//  BaseTabBarController.m
//  水云天
//
//  Created by ZWS on 16/4/5.
//  Copyright © 2016年 Sinfotek. All rights reserved.
//

#import "BaseTabBarController.h"
#import "RecommendViewController.h"
#import "FireViewController.h"
#import "FindViewController.h"
#import "BaseNavController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //创建子控制器
    [self createSubCtrls];
    
}

- (void)createSubCtrls{
    //修改下面文字大小和颜色
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:11],NSFontAttributeName,[UIColor colorWithRed:44/255.0 green:185/255.0 blue:176/255.0 alpha:1],NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:11],NSFontAttributeName,[UIColor colorWithRed:44/255.0 green:185/255.0 blue:176/255.0 alpha:1],NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    
    
    //第三级控制器
    RecommendViewController *recVC = [[RecommendViewController alloc] init];
    recVC.title = @"推荐";
    UIImage *image = [[UIImage imageNamed:@"icon_tabbar_homepage"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectImage = [[UIImage imageNamed:@"icon_tabbar_homepage_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    recVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"推荐" image:image  selectedImage:selectImage];


    FireViewController *fireVC = [[FireViewController alloc] init];
    fireVC.title = @"聊天";
    UIImage *image1 = [[UIImage imageNamed:@"icon_tabbar_merchant_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectImage1 = [[UIImage imageNamed:@"icon_tabbar_merchant_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    fireVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"聊天" image:image1 selectedImage:selectImage1];
    
    
    FindViewController *findVC = [[FindViewController alloc] init];
    findVC.title = @"发现";
    UIImage *image2 = [[UIImage imageNamed:@"icon_tabbar_mine"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectImage2 = [[UIImage imageNamed:@"icon_tabbar_mine_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    findVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"发现" image:image2 selectedImage:selectImage2];
    
    
    //创建数组
    NSArray *viewCtrls = @[recVC,fireVC,findVC];
    
    //创建可变数组,存储导航控制器
    NSMutableArray *navs = [NSMutableArray arrayWithCapacity:viewCtrls.count];
    
    //创建二级控制器导航控制器
    for (UIViewController *ctrl in viewCtrls) {
        BaseNavController *nav = [[BaseNavController alloc] initWithRootViewController:ctrl];
        
        //将导航控制器加入到数组中
        [navs addObject:nav];
    }
    
    //将导航控制器交给标签控制器管理
    self.viewControllers = navs;
    
    fireVC.tabBarController.selectedIndex = 1;
    
}


@end
