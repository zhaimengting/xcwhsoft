//
//  MaterialScrollView.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/25.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "MaterialScrollView.h"

@interface MaterialScrollView ()<UIScrollViewDelegate>



@end

@implementation MaterialScrollView
{
    UIScrollView *_scrollView;
    //存到数组里面
    NSMutableArray *_arrayView;
}
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //初始化
        _arrayView = [[NSMutableArray alloc]init];
        
        [self initView];
    }
    return self;
}
-(void)initView
{
    _scrollView = [[UIScrollView alloc]initWithFrame:self.bounds];
    _scrollView.pagingEnabled = YES;
    _scrollView.backgroundColor = [UIColor whiteColor];
    _scrollView.showsVerticalScrollIndicator = NO;
    //设置代理
    _scrollView.delegate = self;
    //添加到父视图上
    [self addSubview:_scrollView];
}
//scroview添加滑动view
-(void)loadView:(UIView *)view
{
    view.frame = CGRectMake(_arrayView.count*_scrollView.frame.size.width, 0, _scrollView.frame.size.width, _scrollView.frame.size.height);
    [_scrollView addSubview:view];
    [_arrayView addObject:view];
    _scrollView.contentSize = CGSizeMake(_numOfView * _scrollView.frame.size.width, _scrollView.frame.size.height);
}
-(UIView *)currentView
{
    NSUInteger currentIndex =(NSUInteger) _scrollView.contentOffset.x / (NSUInteger)_scrollView.frame.size.width;
    UIView *view = nil;
    
    if (_arrayView.count > currentIndex)
    {
        view = [_arrayView objectAtIndex:currentIndex];
    }
    
    return view;
}
-(void)stopScroll
{
    UIView *currentView = [self currentView];
    
    if (self.stopScrollToView)
    {
        self.stopScrollToView(currentView);
    }
    
    NSInteger  currentIndex = _scrollView.contentOffset.x / _scrollView.frame.size.width;
    
    if (self.scrollToIndex)
    {
        self.scrollToIndex(currentIndex);
    }
}

//滚动到第几个view
-(void)scrollToViewWithIndex:(NSInteger)index
{
    
    CGFloat contentoffSetX = (index - 1) * _scrollView.frame.size.width;
    
    [_scrollView setContentOffset:CGPointMake(contentoffSetX, 0)];
    
    [self stopScroll];
}

// 停止滚动的时候调用 stopScroll
// 停止减速
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    [self stopScroll];
}
// 停止拖拽  decelerate判断时候会减速
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    
    if (decelerate == NO)
    {
        [self stopScroll];
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
