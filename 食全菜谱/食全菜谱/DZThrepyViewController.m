//
//  DZThrepyViewController.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/23.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "DZThrepyViewController.h"

#import "UIImage+Category.h"

#import "SubViewController.h"

#import "InternalMedicineView.h"

#import "SurgeryView.h"


@interface DZThrepyViewController ()

@property(nonatomic,strong)UISegmentedControl *seg;

@property(nonatomic,strong)SubViewController *svc;

@property(nonatomic,strong)InternalMedicineView *InterView;

@property(nonatomic,strong)SurgeryView *SurView;


@end

@implementation DZThrepyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"对症食疗";
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    UIBarButtonItem *myButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"u4.png"] style:UIBarButtonItemStyleBordered target:self action:@selector(myButtonClick)];
    
    myButton.tintColor = [UIColor whiteColor];
    
    self.navigationItem.leftBarButtonItem = myButton;
    /*设置控件UIsegmentedControl属性*/
    NSArray *array = [NSArray arrayWithObjects:@"外科",@"内科", nil];
    self.seg = [[UISegmentedControl alloc] initWithItems:array];
    //self.seg.selectedSegmentIndex = 0;
    self.seg.tintColor = [UIColor whiteColor];
    self.navigationItem.titleView = self.seg;
    [self.seg addTarget:self action:@selector(segClickControlAction:) forControlEvents:UIControlEventValueChanged];
}
#pragma mark - myButton点击事件
-(void)myButtonClick
{
    NSLog(@"您点击了按钮");
}

-(void)segClickControlAction:(UISegmentedControl *)seg
{
    NSInteger Index = seg.selectedSegmentIndex;
    NSLog(@"Index ========%li",(long)Index);
    switch (Index) {
        case 0:
            [self selectMyView1];
            break;
        case 1:
            [self selectMyView2];
        default:
            break;
    }
    
}

-(void)selectMyView1
{
    NSLog(@"我是外科");
    __weak typeof(self)weakS = self;
    self.InterView = [[InternalMedicineView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    [self.InterView setPushNextVC:^(UIViewController *vc)
    {
        [weakS.navigationController pushViewController:vc animated:YES];
        
    }];
    
    [self.view addSubview:self.InterView];
    
    
}

-(void)selectMyView2
{
    NSLog(@"我是内科");
    
    self.SurView = [[SurgeryView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    
    [self.view addSubview:self.SurView];
    
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
