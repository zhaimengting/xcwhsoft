//
//  DZAllFoodsViewController.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/23.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "DZAllFoodsViewController.h"
//导入素材VIew
#import "VegetarianMaterialView.h"
//导入荤材的页面
#import "FragrantMaterialView.h"


@interface DZAllFoodsViewController ()

//添加分栏控制器
@property(nonatomic,strong)UISegmentedControl *mainSeg;
//添加素材和荤材的View
@property(nonatomic,strong)VegetarianMaterialView *vegetarianMaterialView;
@property(nonatomic,strong)FragrantMaterialView *fragrantMaterialView;


@end

@implementation DZAllFoodsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    //设置导航栏背景图片
    //[self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"u16"] forBarMetrics:UIBarMetricsDefault];
    //[self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:65./255. green:159./255. blue:179./255. alpha:1]];
    [self.navigationController.navigationBar setBackgroundColor:[UIColor whiteColor]];
    //导航条样式
   // self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    //导航条透明度
    self.navigationController.navigationBar.translucent = YES;

    //添加分栏控制器的主题数组
    NSArray *segArray = [[NSArray alloc]initWithObjects:@"0",@"1" ,nil];
    //分栏控制器初始化
    self.mainSeg = [[UISegmentedControl alloc]initWithItems:segArray];
    self.mainSeg.frame = CGRectMake(0, 0, 150, 32);
    self.mainSeg.selectedSegmentIndex = 0;
    [self selectVegetarianMaterial];
    self.mainSeg.tintColor = [UIColor whiteColor];

    //设置在点击后是否恢复原样
    self.mainSeg.momentary = NO;
    //设置标题
    [self.mainSeg setTitle:@"素材" forSegmentAtIndex:0];
    [self.mainSeg setTitle:@"荤材" forSegmentAtIndex:1];
    //添加事件
    [self.mainSeg addTarget:self action:@selector(selectFood:) forControlEvents:UIControlEventValueChanged ];
    //将分栏控制器添加到导航栏居中位置
    [self.navigationController.navigationBar.topItem setTitleView:self.mainSeg];
    
}

-(void)selectFood:(UISegmentedControl *)seg
{
    NSInteger index = seg.selectedSegmentIndex;
    
    switch (index)
    {
        case 0:
            //点击素材
            [self selectVegetarianMaterial];
            break;
        case 1:
            //点击荤材
            [self selectFragrantMaterial];
            break;
        default:
            break;
    }
}
//选择素材
-(void)selectVegetarianMaterial
{
    __weak typeof(self)weakS =self;
    //初始化
    self.vegetarianMaterialView = [[VegetarianMaterialView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-104)];
    [self.view addSubview:self.vegetarianMaterialView];
    [self.vegetarianMaterialView setPushNextVC:^(UIViewController *vc)
     {
         [weakS.navigationController pushViewController:vc animated:NO];
     }];
}
//选择荤材
-(void)selectFragrantMaterial
{
    self.fragrantMaterialView = [[FragrantMaterialView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-104)];
    [self.view addSubview:self.fragrantMaterialView];
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
