//
//  FoodDetailMakeViewController.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/30.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "FoodDetailMakeViewController.h"
#import "TopDetailReusableView.h"
//导入相关知识的cell
#import "FoodRelatedKnowledgeCollectionViewCell.h"
//导入相生相克的cell
#import "MutualPromotionAndRestraintCell.h"


@interface FoodDetailMakeViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
//collectionView
@property(nonatomic,strong)UICollectionView *collectionView;
//头视图
@property(nonatomic,strong)TopDetailReusableView *topDetailView;
//数据源
@property(nonatomic,strong)NSMutableArray *dataArray;
//被选择的按钮
@property(nonatomic,assign)NSInteger selectedIndex;

@end

static NSString *cellName = @"indentifier";
@implementation FoodDetailMakeViewController
{
    //上面的高
    CGFloat _topDetailViewHeight;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    _topDetailViewHeight = XCYFrom6(230.0f);
    [self initView];
}
-(void)initView
{
    //初始化layOut
    UICollectionViewFlowLayout *layOut = [[UICollectionViewFlowLayout alloc]init];
    //大小
    layOut.itemSize = CGSizeMake(XCW-2*XCXFrom6(10.0f), XCH+64);
    self.collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 64, XCW, XCH-104)collectionViewLayout:layOut];
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
    //注册相关知识的cell
    [self.collectionView registerClass:[FoodRelatedKnowledgeCollectionViewCell class] forCellWithReuseIdentifier:@"FoodRelatedKnowledgeCollectionViewCell"];
    //注册相生相克的cell
    [self.collectionView registerClass:[MutualPromotionAndRestraintCell class] forCellWithReuseIdentifier:@"MutualPromotionAndRestraintCell"];
    //头视图设置大小
    layOut.headerReferenceSize = CGSizeMake(XCW, 200);
}
#pragma mark - 代理
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 1;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (_selectedIndex==0)
    {
        FoodRelatedKnowledgeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FoodRelatedKnowledgeCollectionViewCell" forIndexPath:indexPath];
        return cell;
    }
    else
    {
        MutualPromotionAndRestraintCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MutualPromotionAndRestraintCell" forIndexPath:indexPath];
        return cell;
    }
    
}
#pragma mark - cell的大小
#pragma mark - 头视图
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    __weak typeof(self)weakS = self;
    TopDetailReusableView *topDetailView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"TopDetailReusableView" forIndexPath:indexPath];
    [topDetailView createImageViewWithNum:4];
    
    [topDetailView setClickedIndex:^(NSInteger index)
    {
        weakS.selectedIndex = index;
    }];
    return topDetailView;
}
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
