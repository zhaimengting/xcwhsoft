//
//  FoodDetailsViewController.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/28.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "FoodDetailsViewController.h"
#import "TopDetailView.h"
#import "MaterialScrollView.h"
//制作材例
#import "BottomDetailView.h"
#import "TopDetailReusableView.h"
#import "BottomDetailCollectionViewCell.h"
#import "FoodDetailMakeViewController.h"
//导入食材概述
#import "FoodBriefViewCell.h"

@interface FoodDetailsViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
//collectionView
@property(nonatomic,strong)UICollectionView *collectionView;
//数据源
@property(nonatomic,strong)NSMutableArray *dataArray;
//被选中的按钮
@property(nonatomic,assign)NSInteger selectedIndex;
@end

static NSString *cellName = @"cell";
@implementation FoodDetailsViewController
{
    CGFloat _topDetailViewHeight;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initView];
}
-(void)initView
{
    //初始化layOut
    UICollectionViewFlowLayout *layOut = [[UICollectionViewFlowLayout alloc]init];
    //大小
    layOut.itemSize = CGSizeMake(XCW/2-XCXFrom6(6), XCYFrom6(120));
    self.collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 64, XCW, XCH-108) collectionViewLayout:layOut];
    //设置代理
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    //背景色
    self.collectionView.backgroundColor = [UIColor clearColor];
    //添加到视图上
    [self.view addSubview:self.collectionView];
    
    //注册
    //头视图
    [self.collectionView registerClass:[TopDetailReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TopDetailReusableView"];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellName];
    [self.collectionView registerClass:[BottomDetailCollectionViewCell class] forCellWithReuseIdentifier:@"BottomDetailCollectionViewCell"];
    [self.collectionView registerClass:[FoodBriefViewCell class] forCellWithReuseIdentifier:@"FoodBriefViewCell"];
    //头视图设置大小
    layOut.headerReferenceSize = CGSizeMake(XCW, 200);
}
#pragma mark - 黄金三问
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (_selectedIndex == 0)
    {
        return 10;
    }
    return 20;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
//    if (_selectedIndex == 0)
//    {
        BottomDetailCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"BottomDetailCollectionViewCell" forIndexPath:indexPath];
        cell.imgView.image = [UIImage imageNamed:@"u32.jpg"];
        cell.nameTitle.text = @"西兰花";
        return cell;
//   // }
//    }else if (_selectedIndex == 1)
//    {
//        FoodBriefViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FoodBriefViewCell" forIndexPath:indexPath];
//        return cell;
//    }
//    else
//    {
//        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellName forIndexPath:indexPath];
//        cell.backgroundColor = [UIColor redColor];
//        return cell;
//    }
}
#pragma mark - 头视图
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    __weak typeof(self)weakS = self;
    
    TopDetailReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TopDetailReusableView" forIndexPath:indexPath];
    [headerView createImageViewWithNum:5];
    [headerView setClickedIndex:^(NSInteger index)
    {
        weakS.selectedIndex = index;
    }];
    return headerView;
}
#pragma mark -cell的点击事件
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
//    if (_selectedIndex == 0)
//    {
        FoodDetailMakeViewController *vc = [[FoodDetailMakeViewController alloc]init];
        [self.navigationController pushViewController:vc animated:NO];
//    }
//    else
//    {
//        NSLog(@"11111");
//    }
}
#pragma mark -setter
-(void)setSelectedIndex:(NSInteger)selectedIndex
{
    _selectedIndex = selectedIndex;
    
    [self.collectionView reloadData];
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
