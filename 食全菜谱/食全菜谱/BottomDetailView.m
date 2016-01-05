//
//  BottomDetailView.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/29.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "BottomDetailView.h"
#import "BottomDetailCollectionViewCell.h"
#import "FoodDetailMakeViewController.h"

@interface BottomDetailView ()<UICollectionViewDataSource,UICollectionViewDelegate>

@property(nonatomic,strong)UICollectionView *collectionView;
//数据源
@property(nonatomic,strong)NSMutableArray *dataArray;

@end
static NSString *indentifer = @"BottomDetailCollectionViewCell";

@implementation BottomDetailView
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self initView];
        [self initData];
    }
    return self;
}
-(void)initView
{
    //创建layOut
    UICollectionViewFlowLayout *layOut = [[UICollectionViewFlowLayout alloc]init];
    //大小
    layOut.itemSize = CGSizeMake(self.frame.size.width/2-8, XCYFrom6(120));
    //初始化
    self.collectionView = [[UICollectionView alloc]initWithFrame:self.bounds collectionViewLayout:layOut];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    //设置代理
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    //系统注册
    [self.collectionView registerClass:[BottomDetailCollectionViewCell class] forCellWithReuseIdentifier:indentifer];
    //添加到视图上
    [self addSubview:self.collectionView];
}
-(void)initData
{
    self.dataArray = [[NSMutableArray alloc]init];
}
#pragma mark - 黄金三问
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (self.dataArray.count == 0)
    {
        return 10;
    }
    return self.dataArray.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    BottomDetailCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:indentifer forIndexPath:indexPath];
    cell.imgView.image = [UIImage imageNamed:@"u36"];
    cell.nameTitle.text = @"西兰花";
    cell.nameTitle.textAlignment = NSTextAlignmentCenter;
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}
//点击事件
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.pushNextVC)
    {
        FoodDetailMakeViewController *vc = [[FoodDetailMakeViewController alloc]init];
        self.pushNextVC(vc);
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
