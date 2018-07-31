//
//  LeftViewController.m
//  LeftSlide
//
//  Created by iMac on 17/3/8.
//  Copyright © 2017年 zws. All rights reserved.
//


#import "LeftViewController.h"
#import "AppDelegate.h"
#import "OtherController.h"
#import "UserInfoViewController.h"
#import "LeftHeaderView.h"
#import "LeftMenuCell.h"


@interface LeftViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *_cellImgNameArray;
    NSArray *_cellTitleNameArray;
}
@property (nonatomic , strong) UITableView *tableView;
@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    _cellImgNameArray = @[@"UserPlaceHolder",@"UserPlaceHolder",@"UserPlaceHolder",@"UserPlaceHolder",@"UserPlaceHolder",@"UserPlaceHolder",@"UserPlaceHolder"];
    _cellTitleNameArray = @[@"我的粉丝",@"我的关注",@"订单信息",@"我的收藏",@"向导中心",@"设置",@"意见反馈"];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    
//    LeftHeaderView *hView = [[[NSBundle mainBundle] loadNibNamed:@"LeftHeaderView" owner:self options:nil] firstObject];
//    hView.frame = CGRectMake(0, 0, self.tableview.frame.size.width, 80);
//    self.tableview.tableHeaderView = hView;
    
    self.tableView.dataSource = self;
    self.tableView.delegate  = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:self.tableView];

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *lmCell = @"lmCell";
    LeftMenuCell *cell = [tableView dequeueReusableCellWithIdentifier:lmCell];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"LeftMenuCell" owner:nil options:nil] lastObject];
    }
    cell.imgView.image = [UIImage imageNamed:_cellImgNameArray[indexPath.row]];
    cell.titleLabel.text = _cellTitleNameArray[indexPath.row];
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
//    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//    OtherController *vc = [[OtherController alloc] init];
//    vc.titleString = [tableView cellForRowAtIndexPath:indexPath].textLabel.text;
//    vc.hidesBottomBarWhenPushed = YES;
//    [tempAppDelegate.LeftSlideVC closeLeftView];//关闭左侧抽屉
//    [tempAppDelegate.mainTabBarController.selectedViewController pushViewController:vc animated:NO];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 160;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    LeftHeaderView *hView = [[[NSBundle mainBundle] loadNibNamed:@"LeftHeaderView" owner:self options:nil] firstObject];
    hView.tapimageView = ^{
        
    };

    return hView;
}


- (void)imgButtonAction {
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    UserInfoViewController *vc = [[UserInfoViewController alloc] init];
    
    [tempAppDelegate.mainTabBarController.selectedViewController presentViewController:vc animated:YES completion:^{
        [tempAppDelegate.LeftSlideVC closeLeftView];
    }];
    
}


@end
