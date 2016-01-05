//
//  BottomDetailCollectionViewCell.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/29.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "BottomDetailCollectionViewCell.h"

@implementation BottomDetailCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //照片初始化
        self.imgView = [[UIImageView alloc]initWithFrame:CGRectMake(XCXFrom6(10), XCYFrom6(10), self.frame.size.width-2*XCXFrom6(10), self.frame.size.height-XCYFrom6(25))];
        //添加到视图上
        [self addSubview:self.imgView];
        //标签初始化
        self.nameTitle = [[UILabel alloc]initWithFrame:CGRectMake(XCXFrom6(10), self.imgView.frame.size.height+XCYFrom6(5), self.frame.size.width, XCYFrom6(25))];
        //字体颜色
        self.nameTitle.textColor = [UIColor blackColor];
        //添加到视图上
        [self addSubview:self.nameTitle];
    }
    return self;
}

@end
