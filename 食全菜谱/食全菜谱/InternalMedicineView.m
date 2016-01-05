//
//  InternalMedicineView.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/29.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "InternalMedicineView.h"

#import "UIImage+Category.h"

#import "SubViewController.h"

#import "DZThrepyViewController.h"

@interface InternalMedicineView()
@property(nonatomic,strong)UIButton *button1;
@property(nonatomic,strong)UIButton *button2;
@property(nonatomic,strong)UIButton *button3;
@property(nonatomic,strong)UIButton *button4;

@end
@implementation InternalMedicineView


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        /*设置button属性*/
        self.backgroundColor = [UIColor whiteColor];
        self.button1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.button1 setTitle:@"创伤" forState:UIControlStateNormal];
        [self.button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.button1.frame = CGRectMake(0, 0, self.bounds.size.width/4, 50);
        self.button1.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithColor:[UIColor colorWithRed:51./255. green:142/255. blue:160/255. alpha:1]]];
        [self.button1 addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        
        self.button2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.button2 setTitle:@"感染" forState:UIControlStateNormal];
        self.button2.frame = CGRectMake(self.bounds.size.width/4, 0, self.bounds.size.width/4, 50);
        [self.button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.button2.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithColor:[UIColor colorWithRed:51./255. green:142/255. blue:160/255. alpha:1]]];
        
        self.button3 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.button3 setTitle:@"畸形" forState:UIControlStateNormal];
        self.button3.frame = CGRectMake(self.bounds.size.width/2, 0, self.bounds.size.width/4, 50);
        [self.button3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.button3.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithColor:[UIColor colorWithRed:51./255. green:142/255. blue:160/255. alpha:1]]];
        
        
        self.button4 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.button4 setTitle:@"肿瘤" forState:UIControlStateNormal];
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
-(void)buttonClick
{
    /*创建点击后出现的视图*/
    UIView *MyView = [[UIView alloc] initWithFrame:CGRectMake(0, 50, self.bounds.size.width, 50)];
    MyView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithColor:[UIColor colorWithRed:190./255. green:213/255. blue:238/255. alpha:1]]];
    [self addSubview:MyView];
    /*依次创建label*/
    UILabel *label11 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width/4, 40)];
    
    label11.text = @"眼外伤";
    label11.font = [UIFont systemFontOfSize:16];
    label11.textAlignment = NSTextAlignmentCenter;
    label11.userInteractionEnabled = YES;
    UITapGestureRecognizer *label11TapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelClick)];
    [label11 addGestureRecognizer:label11TapGesture];
    
    UILabel *label12 = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, self.bounds.size.width/4, 10)];
    label12.text = @"12";
    label12.font = [UIFont systemFontOfSize:13];
    label12.textAlignment = NSTextAlignmentCenter;
    
    [MyView addSubview:label11];
    [MyView addSubview:label12];
    
    UILabel *label21 = [[UILabel alloc] initWithFrame:CGRectMake(self.bounds.size.width/4, 0, self.bounds.size.width/4, 40)];
    
    label21.text = @"眼外伤";
    label21.font = [UIFont systemFontOfSize:16];
    label21.textAlignment = NSTextAlignmentCenter;
    
    UILabel *label22 = [[UILabel alloc] initWithFrame:CGRectMake(self.bounds.size.width/4, 40, self.bounds.size.width/4, 10)];
    label22.text = @"12";
    label22.font = [UIFont systemFontOfSize:13];
    label22.textAlignment = NSTextAlignmentCenter;
    
    [MyView addSubview:label21];
    [MyView addSubview:label22];
    
    UILabel *label31 = [[UILabel alloc] initWithFrame:CGRectMake(self.bounds.size.width/2, 0, self.bounds.size.width/4, 40)];
    
    label31.text = @"眼外伤";
    label31.font = [UIFont systemFontOfSize:16];
    label31.textAlignment = NSTextAlignmentCenter;
    
    UILabel *label32 = [[UILabel alloc] initWithFrame:CGRectMake(2*self.bounds.size.width/4, 40, self.bounds.size.width/4, 10)];
    label32.text = @"12";
    label32.font = [UIFont systemFontOfSize:13];
    label32.textAlignment = NSTextAlignmentCenter;
    
    [MyView addSubview:label31];
    [MyView addSubview:label32];
    
    UILabel *label41 = [[UILabel alloc] initWithFrame:CGRectMake(3*self.bounds.size.width/4, 0, self.bounds.size.width/4, 40)];
    
    label41.text = @"眼外伤";
    label41.font = [UIFont systemFontOfSize:16];
    label41.textAlignment = NSTextAlignmentCenter;
    
    UILabel *label42 = [[UILabel alloc] initWithFrame:CGRectMake(3*self.bounds.size.width/4, 40, self.bounds.size.width/4, 10)];
    label42.text = @"12";
    label42.font = [UIFont systemFontOfSize:13];
    label42.textAlignment = NSTextAlignmentCenter;
    
    [MyView addSubview:label41];
    [MyView addSubview:label42];
    
}

-(void)labelClick
{
    NSLog(@"我是眼伤哦");
    if (self.pushNextVC)
    {
        SubViewController *vc = [[SubViewController alloc]init];
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
