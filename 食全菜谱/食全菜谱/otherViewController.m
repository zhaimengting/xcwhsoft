//
//  otherViewController.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/31.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "otherViewController.h"
#import "UIImage+Category.h"
@interface otherViewController ()

@end

@implementation otherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"other";
    //[[UINavigationBar appearance] setBarTintColor:[UIColor purpleColor]];
    //[self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:0 green:1 blue:0 alpha:0]] forBarMetrics:UIBarMetricsDefault];
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
