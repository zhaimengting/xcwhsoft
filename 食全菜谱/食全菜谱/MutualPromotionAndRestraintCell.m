//
//  MutualPromotionAndRestraintCell.m
//  食全菜谱
//
//  Created by 翔辰文化 on 16/1/4.
//  Copyright © 2016年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "MutualPromotionAndRestraintCell.h"

@implementation MutualPromotionAndRestraintCell
{
    //适宜搭配的标签距最上面的数值距离
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
    //适宜搭配标签
    self.goodLB1 = [[UILabel alloc]initWithFrame:CGRectMake(0,_topSpace, self.frame.size.width, _labelHeight)];
    //背景颜色
    self.goodLB1.backgroundColor = [UIColor redColor];
    //标题
    self.goodLB1.text = @"适宜搭配";
    //字体在哪里的格式
    self.goodLB1.textAlignment = NSTextAlignmentLeft;
    //添加到视图上面
    [self addSubview:self.goodLB1];
    //y坐标的改动
    _horY = _topSpace +_labelHeight;
    
    //适宜搭配概述标签
    self.goodLB2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    //设置行数
    [self.goodLB2 setNumberOfLines:0];
    NSString *string = @"我看得见看上了飞机上来看附件是都是垃圾发生的离开建设的弗兰克教室里的开发就算了空间受到了开始觉得了多少空间了多少空间收到了会计师的离开建设的路口建设的路口附近受到了罚款手机登陆开始将对方实力的建设的路口建设的路口结束了快点放假数量的开发教";
    self.goodLB2.text = string;
    UIFont *font = [UIFont systemFontOfSize:16];
    //限制宽度
    CGSize size = CGSizeMake(self.frame.size.width, 2000);
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil];
    //使该标签的高度随着字体的多少改变
    CGSize labelSize = [string boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
    //设置frame
    self.goodLB2.frame = CGRectMake(0, _horY, labelSize.width, labelSize.height);
    //添加到视图上面
    [self addSubview:self.goodLB2];
    //y坐标的改动
    _horY +=self.goodLB2.frame.size.height;
    
    //不宜搭配标签
    self.badLB1 = [[UILabel alloc]initWithFrame:CGRectMake(0, _horY, self.frame.size.width, _labelHeight)];
    self.badLB1.text = @"不宜搭配";
    self.badLB1.textAlignment = NSTextAlignmentLeft;
    self.badLB1.backgroundColor = [UIColor redColor];
    [self addSubview:self.badLB1];
    
    _horY+=self.badLB1.frame.size.height;
    
    //不宜搭配概述的标签
    self.badLB2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    [self.badLB2 setNumberOfLines:0];
    self.badLB2.text = @"我看得见看上了飞机上来看附件是都是垃圾发生的离开建设的弗兰克教室里的开发就算了空间受到了开始觉得了多少空间了多少空间收到了会计师的离开建设的路口建设的路口附近受到了罚款手机登陆开始将对方实力的建设的路口建设的路口结束了快点放假数量的开发教";
    self.badLB2.frame = CGRectMake(0, _horY, labelSize.width, labelSize.height);
    [self addSubview:self.badLB2];

}

@end
