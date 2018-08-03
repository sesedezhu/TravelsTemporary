//
//  BaseViewController.m
//  Travels
//
//  Created by ZQWFMac on 2018/8/3.
//  Copyright © 2018年 ZQWFMac. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}
/*
 zh-CN 简体中文，中华人民共和国
 zh-HK 繁体中文，香港特别行政区
 zh-MO 繁体中文，澳门特别行政区
 zh-SG 繁体中文，新加坡-
 zh-SG 简体中文，新加坡
 zh-TW 繁体中文，台湾
*/
//获取系统或者app设置的语言，返回默认为中文YES，非中文返回NO
- (BOOL) getAppLanguage{
    NSString *appGetLanguage = [[[NSUserDefaults standardUserDefaults] valueForKey:@"AppleLanguages"] firstObject];
    NSLog(@"当前语言：%@",appGetLanguage);
    if ([appGetLanguage hasPrefix:@"zh-"]) {
        return YES;
    }
    return NO;
}

//中英文切换
- (void) setAppLanguage{
    BOOL isCN = [self getAppLanguage];
    NSString *appleLanguage = @"zh-CN";//简体中文
    if (isCN) {
        appleLanguage = @"en";//英文
    }
    // 切换语言
    [[NSUserDefaults standardUserDefaults] setObject:@[appleLanguage] forKey:@"AppleLanguages"];
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
