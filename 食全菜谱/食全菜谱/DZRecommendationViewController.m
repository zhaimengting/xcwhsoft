//
//  DZRecommendationViewController.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/23.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "DZRecommendationViewController.h"

#import "slideImagesCell.h"

#import "ThreeImagesCell.h"

#import "AppDelegate.h"
/*遵守协议*/
@interface DZRecommendationViewController ()<UITableViewDelegate,UITableViewDataSource>
/*声明一个表视图*/
@property(nonatomic,strong)UITableView *tableView;
/*声明一个数据源*/
@property(nonatomic,strong)NSMutableArray *dataArray;

@end

@implementation DZRecommendationViewController
/*创建一个表视图*/
-(void)creatTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    /*设置委托*/
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.navigationItem.title = @"今日推荐";
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    UIBarButtonItem *myButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"u4.png"] style:UIBarButtonItemStyleBordered target:self action:@selector(openOrCloseLeftList)];

    myButton.tintColor = [UIColor whiteColor];
    
    self.navigationItem.leftBarButtonItem = myButton;
    /*加载到父视图*/
    [self.view addSubview:self.tableView];
    
}
/*创建数据源*/
-(void)creatDataSource
{
    self.dataArray = [NSMutableArray array];
    /*刷新数据*/
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self creatTableView];
    
    [self creatDataSource];

}

#pragma mark - 黄金三问

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        static NSString *cellIdentifier = @"SlideCell";
        
        slideImagesCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        
        if (!cell)
        {
            cell = [[slideImagesCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
            
        }
        return cell;
    }
    
    
    else
    {
        static NSString *cellIdentifier = @"Cell";
    
        ThreeImagesCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
        if (!cell)
        {
            cell = [[ThreeImagesCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
            
        }
        
        return cell;

    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        return 220;
    }
    else
    {
        return 100;
    }
}


- (void) openOrCloseLeftList
{
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if (tempAppDelegate.LeftSlideVC.closed)
    {
        [tempAppDelegate.LeftSlideVC openLeftView];
    }
    else
    {
        [tempAppDelegate.LeftSlideVC closeLeftView];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [tempAppDelegate.LeftSlideVC setPanEnabled:NO];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
    /*AppDelegate可以在整个应用程序中调用，在其他页面中可以使用代码段获取AppDelegate的全局变量*/
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [tempAppDelegate.LeftSlideVC setPanEnabled:YES];
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
