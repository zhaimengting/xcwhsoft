//
//  MaterialListView.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/25.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "MaterialListView.h"
#import "MaterialFirstCellTableViewCell.h"
#import "MaterialSecondTableViewCell.h"
#import "FoodDetailsViewController.h"


@interface MaterialListView ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)UITableView *tableView;

@property(nonatomic,strong)NSMutableArray *dataArray;

@end

@implementation MaterialListView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self initData];
        [self createTableView];
    }
    return self;
}

-(void)createTableView
{
    //初始化
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) style:UITableViewStylePlain];
    //设置代理
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    //添加到主视图上
    [self addSubview:self.tableView];
}
-(void)initData
{
    self.dataArray = [[NSMutableArray alloc]init];
    [self.dataArray addObject:@"1"];
    [self.dataArray addObject:@"2"];
    [self.dataArray addObject:@"3"];
    [self.dataArray addObject:@"4"];
    [self.dataArray addObject:@"5"];
    [self.dataArray addObject:@"6"];
    //加载数据
    [self.tableView reloadData];
}
#pragma mark - 黄金三问
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.dataArray.count == 0)
    {
        return 100;
    }
    else
    {
        return self.dataArray.count;
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    __weak typeof(self)weakS = self;
    if (indexPath.row == 0)
    {
        static NSString *indentifier = @"MaterialFirstCellTableViewCell";
        
        MaterialFirstCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
        
        if (!cell)
        {
            cell = [[[NSBundle mainBundle]loadNibNamed:@"MaterialFirstCellTableViewCell" owner:nil options:nil]firstObject];
        }
        return cell;
    }
    else
    {
        static NSString *indentifier = @"MaterialSecondTableViewCell";
        
        MaterialSecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
        
        if (!cell)
        {
            cell = [[[NSBundle mainBundle]loadNibNamed:@"MaterialSecondTableViewCell" owner:nil options:nil]firstObject];
        }
        [cell setPushNextVC:^(UIViewController *vc) {
            if (weakS.pushFoodDetailsVC)
            {
                weakS.pushFoodDetailsVC(vc);
            }
        }];
        return cell;
    }
}
//行高
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        return XCYFrom6(138.);
    }
    else
    {
        return XCYFrom6(120.);
    }
}
//行的点击时间
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        if (self.pushFoodDetailsVC)
        {
            FoodDetailsViewController *vc = [[FoodDetailsViewController alloc]init];
            self.pushFoodDetailsVC(vc);
        }
    }
    else
    {
        
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
