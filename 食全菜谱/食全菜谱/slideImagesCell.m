//
//  slideImagesCell.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/24.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#define MDXFrom6(x) ([[UIScreen mainScreen] bounds].size.width / 375.0 * x)

#import "slideImagesCell.h"
#import "UIImage+Category.h"

@interface slideImagesCell ()<UIScrollViewDelegate>
@property(nonatomic,strong) UIScrollView *scrollView;
@property(nonatomic,strong) UIPageControl *pageControl;
@property(nonatomic,strong) UILabel *imageLabel;
@end

@implementation slideImagesCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    /*创建一个滚动视图对象*/
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(10, 20, MDXFrom6(355), 200)];
    /*设置滚动视图分页属性*/
    self.scrollView.pagingEnabled = YES;
    /*设置滚动视图分页方向*/
    self.scrollView.showsHorizontalScrollIndicator = YES;
    /*设置滚动视图的滚动区域*/
    self.scrollView.contentSize = CGSizeMake(MDXFrom6(355) * 4, self.bounds.size.height);
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.delegate = self;
    self.scrollView.backgroundColor = [UIColor orangeColor];
    
    [self addSubview:self.scrollView];
    /*循环创建图片*/
    for (NSInteger i = 0; i < 4; i++)
    {
        UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(MDXFrom6(355)*i, 0, MDXFrom6(355), 200)];
        
        NSLog(@"%lf",self.frame.size.width);
        imageView1.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",i + 1]];
        
        [self.scrollView addSubview:imageView1];
    }
    
    
//    [self creatImagesData];
    
    /*设置pageControl属性*/
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 170, MDXFrom6(355), 20)];
    self.pageControl.backgroundColor = [UIColor grayColor];
    self.pageControl.numberOfPages = 4;
    self.pageControl.currentPage = 0;
    /*设置pageControl的背景颜色及透明度*/
    self.pageControl.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0];
    [self addSubview:self.pageControl];
    
    /*设置imageLabel属性*/
    self.imageLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 190, self.scrollView.bounds.size.width, 30)];
    //[self.imageLabel setBackgroundColor:[UIImage imageWithColor:[UIColor colorWithRed:190/255 green:190/255 blue:190/255 alpha:1]]];
    self.imageLabel.backgroundColor = [UIColor colorWithRed:190/255 green:190/255 blue:190/255 alpha:0.3];
    self.imageLabel.textAlignment = NSTextAlignmentCenter;
    self.imageLabel.textColor = [UIColor whiteColor];
    self.imageLabel.text = @"木耳炒山药";
    [self addSubview:self.imageLabel];
    
    return self;

}



#pragma mark - 滚动停止时 contentOffset
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    /*拿到滑出屏幕的坐标*/
    CGPoint point = scrollView.contentOffset;
    NSLog(@"x=%f",point.x);
    /*计算更新页面*/
    self.pageControl.currentPage = point.x / MDXFrom6(355);
    /*判断更新的页面*/
    if (self.pageControl.currentPage == 0)
    {
        self.imageLabel.text = @"木耳炒山药";
    }
    else
        if (self.pageControl.currentPage == 1)
        {
            self.imageLabel.text = @"麻婆豆腐";
        }
        else
            if (self.pageControl.currentPage == 2)
            {
                self.imageLabel.text = @"小炒肉";
            }
            else
                if (self.pageControl.currentPage == 3)
                {
                    self.imageLabel.text = @"口水鸡";
                }

    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
