//
//  TopDetailView.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/29.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "TopDetailView.h"

@implementation TopDetailView
{
    //图片高度
   CGFloat _topImageViewHeight;
}
-(instancetype)initWithFrame:(CGRect)frame
{
    self= [super initWithFrame:frame];
    
    if (self)
    {
        _topImageViewHeight = XCYFrom6(155);
        [self initView];
    }
    return self;
}
-(void)initView
{
    //添加顶部图片
    UIImageView *topImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, XCYFrom6(15), self.frame.size.width, _topImageViewHeight)];
    topImageView.image = [UIImage imageNamed:@"u36"];
    //添加到视图上
    [self addSubview:topImageView];
    
    //设置功能按钮
    CGFloat _buttonWidth = self.frame.size.width/5;
    CGFloat _buttonHeigt = XCYFrom6(45);
    //循环创建button
    for (NSInteger i = 0 ; i <5 ; i ++)
    {
        //初始化
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(i*_buttonWidth, topImageView.frame.origin.y+topImageView.frame.size.height, _buttonWidth, _buttonHeigt);
        //设置主题
        [button setTitle:@"食材概述" forState:UIControlStateNormal];
        button.titleLabel.textAlignment = NSTextAlignmentCenter;
        button.titleLabel.font = [UIFont systemFontOfSize:14.0f];
        //设置图片
        [button setBackgroundImage:[UIImage imageNamed:@"u22"] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage imageNamed:@"u34"] forState:UIControlStateSelected];
        //添加到视图上
        [self addSubview:button];
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
