//
//  VegetarianMaterialView.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/25.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "VegetarianMaterialView.h"
//列表图
#import "MaterialListView.h"
//scroview
#import "MaterialScrollView.h"


@interface VegetarianMaterialView ()<UIScrollViewDelegate>
//滑动scroview
@property(nonatomic,strong)MaterialScrollView *materialScrollView;
@property(nonatomic,strong)UIButton *isSelectedBtn;
@property(nonatomic,strong)NSMutableArray *buttonsArray;
@end

@implementation VegetarianMaterialView
{
    
    
    NSInteger _index;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        //初始化
        _buttonsArray = [[NSMutableArray alloc]init];
        //添加分类按钮
        [self addClassifiedMaterialBtn];
        //添加到视图上
        [self addSubview:self.materialScrollView];
        //防止循环引用，内存泄露
        __weak typeof(self)weakS = self;
        //滑动到第几个View对应的第几个button被选中
        [_materialScrollView setScrollToIndex:^(NSUInteger index)
         {
             weakS.isSelectedBtn = weakS.buttonsArray[index];
         }];
    }
    return  self;
}
//添加素材的分类按钮
-(void)addClassifiedMaterialBtn
{
    for (NSInteger i = 0; i < 4; i++)
    {
        //初始化
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(self.frame.size.width/4.*i, 0, self.frame.size.width/4., 40);
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
        btn.tag = i+1;
        //设置背景颜色
        //btn.backgroundColor = RGB_MD(65, 159, 179);
        //没有被选中的状态
        [btn setBackgroundImage:[UIImage imageNamed:@"u20"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"u16"] forState:UIControlStateSelected];
        //添加按钮点击事件
        [btn addTarget:self action:@selector(btnOnClick:) forControlEvents:UIControlEventTouchUpInside];
        //添加到父视图上
        [self addSubview:btn];
        //添加到数组上
        [_buttonsArray addObject:btn];
        switch (i) {
            case 0:
                //设置按钮的主题
                [btn setTitle:[NSString stringWithFormat:@"蔬菜类"] forState:UIControlStateNormal];
                break;
            case 1:
                //设置按钮的主题
                [btn setTitle:[NSString stringWithFormat:@"瓜果类"] forState:UIControlStateNormal];
                break;
            case 2:
                //设置按钮的主题
                [btn setTitle:[NSString stringWithFormat:@"菌菇类"] forState:UIControlStateNormal];
                break;
            case 3:
                //设置按钮的主题
                [btn setTitle:[NSString stringWithFormat:@"豆制类"] forState:UIControlStateNormal];
                break;
            default:
                break;
        }
        self.isSelectedBtn = self.buttonsArray[0];
    }
}
-(void)btnOnClick:(UIButton *)btn
{
    //点击的button设置成被选中的button
    self.isSelectedBtn = btn;
//求得下标
    NSInteger index = [self.buttonsArray indexOfObject:btn];
    //根据下标出现第几个View
    [_materialScrollView scrollToViewWithIndex:index+1];
    
}
-(MaterialScrollView *)materialScrollView
{
    __weak typeof(self)weakS =self;
    
    if (_materialScrollView == nil)
    {
        //初始化
        _materialScrollView = [[MaterialScrollView alloc]initWithFrame:CGRectMake(0, 40, self.frame.size.width, self.frame.size.height-44)];
        //几个View
        _materialScrollView.numOfView = 4;
        for (NSUInteger i = 0; i < 4; i++)
        {
            MaterialListView *materialListView = [[MaterialListView alloc]initWithFrame:CGRectMake(self.materialScrollView.frame.size.width*i, 0, self.materialScrollView.frame.size.width, self.materialScrollView.frame.size.height)];
            //页面跳转
            [materialListView setPushFoodDetailsVC:^(UIViewController *vc)
            {
                if (weakS.pushNextVC)
                {
                    weakS.pushNextVC(vc);
                }
            }];
            //添加到ScrollView上
            [_materialScrollView loadView:materialListView];
        }
    }
    return _materialScrollView;
}
#pragma mark - getter
-(void)setIsSelectedBtn:(UIButton *)isSelectedBtn
{
    //如果不是用一个button被选中
    if ([_isSelectedBtn isEqual:isSelectedBtn]==NO)
    {
        if (_isSelectedBtn)
        {
            //上一个button设置成没有被选中的状态
            _isSelectedBtn.selected = NO;
        }
        //设置被选中的button
        _isSelectedBtn = isSelectedBtn;
        [_isSelectedBtn setSelected:YES];
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
