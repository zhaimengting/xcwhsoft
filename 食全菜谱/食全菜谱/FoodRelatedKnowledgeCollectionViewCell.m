//
//  FoodRelatedKnowledgeCollectionViewCell.m
//  食全菜谱
//
//  Created by 翔辰文化 on 16/1/4.
//  Copyright © 2016年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "FoodRelatedKnowledgeCollectionViewCell.h"

@implementation FoodRelatedKnowledgeCollectionViewCell
{
    //营养价值的标签距最上面的数值距离
    CGFloat _topSpace;
    //标签的高度
    CGFloat _labelHeight;
    //竖直方向的Y坐标
    CGFloat _horY;
}
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _topSpace = XCYFrom6(10);
        _labelHeight = XCYFrom6(40);
        _horY=0;
        
        [self initView];
    }
    return self;
}
-(void)initView
{
    //初始化营养价值题目标签
    self.nutritionValueLB1 = [[UILabel alloc]initWithFrame:CGRectMake(0,_topSpace, self.frame.size.width, _labelHeight)];
    //背景颜色
    self.nutritionValueLB1.backgroundColor = [UIColor redColor];
    //标题
    self.nutritionValueLB1.text = @"营养价值";
    //字体在哪里的格式
    self.nutritionValueLB1.textAlignment = NSTextAlignmentLeft;
    //添加到视图上面
    [self addSubview:self.nutritionValueLB1];
    //y坐标的改动
    _horY = _topSpace +_labelHeight;
    
    //营养价值概述标签
    self.nutritionValueLB2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    //设置行数
    [self.nutritionValueLB2 setNumberOfLines:0];
    NSString *string = @"人生总有遗憾，但选择之后遗憾到此为止。放下遗憾，面对现实，能改变就改变，不能改变就接受，顺其自然有时候是最好的方式。用最好的心态去面对人生，即使走得磕磕碰碰也会趣味横生，否则即使一路平坦也得不到快乐。";
    self.nutritionValueLB2.text = string;
    UIFont *font = [UIFont systemFontOfSize:18];
    //限制宽度
    CGSize size = CGSizeMake(self.frame.size.width, 2000);
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil];
    //使该标签的高度随着字体的多少改变
    CGSize labelSize = [string boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
    //设置frame
    self.nutritionValueLB2.frame = CGRectMake(0, _horY, labelSize.width, labelSize.height);
    //添加到视图上面
    [self addSubview:self.nutritionValueLB2];
    //y坐标的改动
    _horY +=self.nutritionValueLB2.frame.size.height;
    
    //用料的标签
    self.useLB1 = [[UILabel alloc]initWithFrame:CGRectMake(0, _horY, self.frame.size.width, _labelHeight)];
    self.useLB1.text = @"用料";
    self.useLB1.textAlignment = NSTextAlignmentLeft;
    self.useLB1.backgroundColor = [UIColor redColor];
    [self addSubview:self.useLB1];
    
    _horY+=self.useLB1.frame.size.height;
    
    //用料概述的标签
    self.useLB2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    [self.useLB2 setNumberOfLines:1000];
    self.useLB2.text = @"人生总有遗憾，但选择之后遗憾到此为止。放下遗憾，面对现实，能改变就改变，不能改变就接受，顺其自然有时候是最好的方式。用最好的心态去面对人生，即使走得磕磕碰碰也会趣味横生，否则即使一路平坦也得不到快乐。";
    self.useLB2.frame = CGRectMake(0, _horY, labelSize.width, labelSize.height);
    [self addSubview:self.useLB2];
    
    _horY += self.useLB2.frame.size.height;
    
    //制作指导
    self.makeLB1 = [[UILabel alloc]initWithFrame:CGRectMake(0, _horY, self.frame.size.width, _labelHeight)];
    self.makeLB1.text = @"制作指导";
    self.makeLB1.textAlignment = NSTextAlignmentLeft;
    self.makeLB1.backgroundColor = [UIColor redColor];
    [self addSubview:self.makeLB1];
    
    _horY += self.makeLB1.frame.size.height;
    
    self.makeLB2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    [self.makeLB2 setNumberOfLines:0];
    self.makeLB2.text = @"人生总有遗憾，但选择之后遗憾到此为止。放下遗憾，面对现实，能改变就改变，不能改变就接受，顺其自然有时候是最好的方式。用最好的心态去面对人生，即使走得磕磕碰碰也会趣味横生，否则即使一路平坦也得不到快乐。";
    self.makeLB2.frame = CGRectMake(0, _horY, labelSize.width, labelSize.height);
    [self addSubview:self.makeLB2];
    
    _horY += self.useLB2.frame.size.height;

    
}

@end
