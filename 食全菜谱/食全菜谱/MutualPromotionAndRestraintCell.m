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
    NSString *string = @"人生总有遗憾，但选择之后遗憾到此为止。放下遗憾，面对现实，能改变就改变，不能改变就接受，顺其自然有时候是最好的方式。用最好的心态去面对人生，即使走得磕磕碰碰也会趣味横生，否则即使一路平坦也得不到快乐。";
    self.goodLB2.text = string;
    UIFont *font = [UIFont systemFontOfSize:18];
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
    self.badLB2.text = @"人生总有遗憾，但选择之后遗憾到此为止。放下遗憾，面对现实，能改变就改变，不能改变就接受，顺其自然有时候是最好的方式。用最好的心态去面对人生，即使走得磕磕碰碰也会趣味横生，否则即使一路平坦也得不到快乐。";
    self.badLB2.frame = CGRectMake(0, _horY, labelSize.width, labelSize.height);
    [self addSubview:self.badLB2];

}

@end
