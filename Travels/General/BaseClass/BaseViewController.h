//
//  BaseViewController.h
//  Travels
//
//  Created by ZQWFMac on 2018/8/3.
//  Copyright © 2018年 ZQWFMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController


//获取系统或者app设置的语言，返回默认为中文YES，非中文返回NO
- (BOOL) getAppLanguage;

//中英文切换
- (void) setAppLanguage;

@end
