//
//  LeftHeaderView.h
//  Travels
//
//  Created by ZQWFMac on 2018/7/26.
//  Copyright © 2018年 ZQWFMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftHeaderView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *titleLable;

@property (nonatomic ,strong) void (^tapimageView)(void);

@end
