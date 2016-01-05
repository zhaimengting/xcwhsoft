//
//  FoodBriefViewCell.m
//  食全菜谱
//
//  Created by 翔辰文化 on 16/1/5.
//  Copyright © 2016年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "FoodBriefViewCell.h"

@implementation FoodBriefViewCell
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
    //食材概述标签
    self.briefLB1 = [[UILabel alloc]initWithFrame:CGRectMake(_topSpace,_topSpace, self.frame.size.width, _labelHeight)];
    //背景颜色
    self.briefLB1.backgroundColor = [UIColor redColor];
    //标题
    self.briefLB1.text = @"食材概述";
    //字体在哪里的格式
    self.briefLB1.textAlignment = NSTextAlignmentLeft;
    //添加到视图上面
    [self addSubview:self.briefLB1];
    //y坐标的改动
    _horY = _topSpace +_labelHeight;
    
    //适宜搭配概述标签
    self.briefLB2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    //设置行数
    [self.briefLB2 setNumberOfLines:0];
    NSString *string = @"人生总有遗憾，但选择之后遗憾到此为止。放下遗憾，面对现实，能改变就改变，不能改变就接受，顺其自然有时候是最好的方式。用最好的心态去面对人生，即使走得磕磕碰碰也会趣味横生，否则即使一路平坦也得不到快乐。";
    self.briefLB2.text = string;
    UIFont *font = [UIFont systemFontOfSize:18];
    //限制宽度
    CGSize size = CGSizeMake(self.frame.size.width, 2000);
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil];
    //使该标签的高度随着字体的多少改变
    CGSize labelSize = [string boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
    //设置frame
    self.briefLB2.frame = CGRectMake(_topSpace, _horY,self.frame.size.width, labelSize.height);
    //添加到视图上面
    [self addSubview:self.briefLB2];
}

@end
