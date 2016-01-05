//
//  SubViewController.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/29.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "SubViewController.h"

#import "ImagesCell.h"

#import "HeadLabelTextViewController.h"

@interface SubViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)UITableView *ImagesTableView;

@property(nonatomic,strong)NSMutableArray *dataArray;

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*设置View属性*/
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"眼外伤";
    UILabel *HeadingLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, self.view.bounds.size.width-10-10, 40)];
    HeadingLabel.backgroundColor = [UIColor redColor];
//    HeadingLabel.text = @"  眼外伤是由于机械性、物理性、化学性等因素直接作用于眼部，引起眼的结构和功能损害。眼外伤根据外伤的致伤因素，可分为机械性和非机械性。机械性眼外伤通常包括挫伤、穿通伤、异物伤等；非机械性眼外伤包括热烧伤、化学伤、辐射伤和毒气伤等。";
    HeadingLabel.text = @"  眼外伤是由于机械性、物理性、化学性等....〉";
    HeadingLabel.textColor = [UIColor whiteColor];
    HeadingLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:HeadingLabel];
    /*用户交互*/
    HeadingLabel.userInteractionEnabled = YES;
    UITapGestureRecognizer *HeadingLabelGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(HeadingLabelClick)];
    [HeadingLabel addGestureRecognizer:HeadingLabelGesture];
    
    __weak typeof(self)weakS = self;
    [self setPushHeadTextView:^(UIViewController *tvc) {
        [weakS.navigationController pushViewController:tvc animated:YES];
    }];
    
    [self creatData];
    
    [self creatTableView];
    
    
}
/*创建数据源*/
-(void)creatData
{
    self.dataArray = [NSMutableArray array];
    
    
    [self.ImagesTableView reloadData];
}
/*创建tableView*/
-(void)creatTableView
{
    self.ImagesTableView = [[UITableView alloc] initWithFrame:CGRectMake(10, 50, self.view.bounds.size.width-10-10, self.view.bounds.size.height-50) style:UITableViewStylePlain];
    
    self.ImagesTableView.delegate = self;
    self.ImagesTableView.dataSource = self;
    
    [self.view addSubview:self.ImagesTableView];
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
    static NSString *identifier = @"identifier";
    
    ImagesCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell)
    {
        cell = [[ImagesCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    //cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}
/*设置cell的高度*/
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 160;
}
/*用block进行页面跳转*/
-(void)HeadingLabelClick
{
    NSLog(@"眼外伤展开");
    if (self.pushHeadTextView)
    {
        HeadLabelTextViewController *tvc = [[HeadLabelTextViewController alloc] init];
        
        self.pushHeadTextView(tvc);
    }
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
