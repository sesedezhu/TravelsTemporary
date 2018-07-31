//
//  LeftHeaderView.m
//  Travels
//
//  Created by ZQWFMac on 2018/7/26.
//  Copyright © 2018年 ZQWFMac. All rights reserved.
//

#import "LeftHeaderView.h"

@implementation LeftHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (IBAction)tapGestureRecognizerImageViewAvtion:(UITapGestureRecognizer *)sender {
    if (self.tapimageView) {
        self.tapimageView();
    }
}


@end
