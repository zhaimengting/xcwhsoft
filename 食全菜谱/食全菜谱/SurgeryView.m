//
//  SurgeryView.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/29.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "SurgeryView.h"

#import "UIImage+Category.h"

@interface SurgeryView()

@property(nonatomic,strong)UIButton *button1;

@property(nonatomic,strong)UIButton *button2;

@property(nonatomic,strong)UIButton *button3;

@property(nonatomic,strong)UIButton *button4;

@end
@implementation SurgeryView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        /*设置相关控件属性*/
        self.backgroundColor = [UIColor whiteColor];
        self.button1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.button1 setTitle:@"神经内科" forState:UIControlStateNormal];
        [self.button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.button1.frame = CGRectMake(0, 0, self.bounds.size.width/4, 50);
        self.button1.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithColor:[UIColor colorWithRed:51./255. green:142/255. blue:160/255. alpha:1]]];
        
        self.button2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.button2 setTitle:@"呼吸内科" forState:UIControlStateNormal];
        self.button2.frame = CGRectMake(self.bounds.size.width/4, 0, self.bounds.size.width/4, 50);
        [self.button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.button2.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithColor:[UIColor colorWithRed:51./255. green:142/255. blue:160/255. alpha:1]]];
        
        self.button3 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.button3 setTitle:@"肝脏内科" forState:UIControlStateNormal];
        self.button3.frame = CGRectMake(self.bounds.size.width/2, 0, self.bounds.size.width/4, 50);
        [self.button3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.button3.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithColor:[UIColor colorWithRed:51./255. green:142/255. blue:160/255. alpha:1]]];
        
        
        self.button4 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.button4 setTitle:@"血液内科" forState:UIControlStateNormal];
        self.button4.frame = CGRectMake(3*self.bounds.size.width/4, 0, self.bounds.size.width/4, 50);
        [self.button4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.button4.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithColor:[UIColor colorWithRed:51./255. green:142/255. blue:160/255. alpha:1]]];
        
        [self addSubview:self.button1];
        [self addSubview:self.button2];
        [self addSubview:self.button3];
        [self addSubview:self.button4];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
