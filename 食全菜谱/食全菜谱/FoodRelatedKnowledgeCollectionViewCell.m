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
    NSString *string = @"我看得见看上了飞机上来看附件是都是垃圾发生的离开建设的弗兰克教室里的开发就算了空间受到了开始觉得了多少空间了多少空间收到了会计师的离开建设的路口建设的路口附近受到了罚款手机登陆开始将对方实力的建设的路口建设的路";
    self.nutritionValueLB2.text = string;
    UIFont *font = [UIFont systemFontOfSize:16];
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
    [self.useLB2 setNumberOfLines:0];
    self.useLB2.text = @"我看得见看上了飞机上来看附件是都是垃圾发生的离开建设的弗兰克教室里的开发就算了空间受到了开始觉得了多少空间了多少空间收到了会计师的离开建设的路口建设的路口附近受到了罚款手机登陆开始将对方实力的建设的路口建设的路口结束了快点放假数量的开发教";
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
    self.makeLB2.text = @"我看得见看上了飞机上来看附件是都是垃圾发生的离开建设的弗兰克教室里的开发就算了空间受到了开始觉得了多少空间了多少空间收到了会计师的离开建设的路口建设的路口附近受到了罚款手机登陆开始将对方实力的建设的路口建设的路口结束了快点放假数量的开发教";
    self.makeLB2.frame = CGRectMake(0, _horY, labelSize.width, labelSize.height);
    [self addSubview:self.makeLB2];
    
    _horY += self.useLB2.frame.size.height;

    
}

@end
