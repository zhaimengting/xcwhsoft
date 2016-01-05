//
//  DZTabBarController.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/23.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "DZTabBarController.h"

#import "DZRecommendationViewController.h"

#import "DZAllFoodsViewController.h"

#import "DZThrepyViewController.h"

#import "UIImage+Category.h"


@interface DZTabBarController ()

@end

@implementation DZTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    DZRecommendationViewController *rvc = [[DZRecommendationViewController alloc] init];
    UINavigationController *rvcNav = [[UINavigationController alloc] initWithRootViewController:rvc];
    [rvcNav.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:61./255. green:159/255. blue:179/255. alpha:1]] forBarMetrics:UIBarMetricsDefault];

    rvc.tabBarItem.image = [UIImage imageNamed:@"今日推荐"];

    DZAllFoodsViewController *afvc = [[DZAllFoodsViewController alloc] init];
    UINavigationController *afNav = [[UINavigationController alloc] initWithRootViewController:afvc];
    [afNav.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:61./255. green:159/255. blue:179/255. alpha:1]] forBarMetrics:UIBarMetricsDefault];
    afvc.tabBarItem.image = [UIImage imageNamed:@"食材大全"];
    
    DZThrepyViewController *tvc = [[DZThrepyViewController alloc] init];
    UINavigationController *tNav = [[UINavigationController alloc] initWithRootViewController:tvc];
    [tNav.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:61./255. green:159/255. blue:179/255. alpha:1]] forBarMetrics:UIBarMetricsDefault];
    tvc.tabBarItem.image = [UIImage imageNamed:@"对症食疗"];
    
    self.tabBar.barTintColor = [UIColor colorWithPatternImage: [UIImage imageWithColor: [UIColor colorWithRed:1./255. green:1./255. blue:1./255. alpha:1]]];
    //self.tabBar.barTintColor = [UIColor colorWithRed:61.0 green:159.0 blue:179.0 alpha:1.0];
    self.tabBar.barTintColor = [UIColor colorWithPatternImage:[UIImage imageWithColor:[UIColor colorWithRed:61./255. green:159/255. blue:179/255. alpha:1]]];
    self.viewControllers = @[rvcNav,afNav,tNav];
    
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
