//
//  ThreeImagesCell.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/25.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#define MDXFrom6(x) ([[UIScreen mainScreen] bounds].size.width / 375.0 * x)

#import "ThreeImagesCell.h"

@interface ThreeImagesCell()
@property(nonatomic,strong)UIImageView *imageView1;
@property(nonatomic,strong)UIImageView *imageView2;
@property(nonatomic,strong)UIImageView *imageView3;
@property(nonatomic,strong)UILabel *label1;
@property(nonatomic,strong)UILabel *label2;
@property(nonatomic,strong)UILabel *label3;
@end

@implementation ThreeImagesCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self)
    {
//        UIImageView *imageview1 = [[UIImageView alloc] initWithFrame:CGRectMake(125, 50, 229, 229)];
//        [imageview1 setImage:[UIImage imageWithContentsOfFile:path]];
//        imageview1.userInteractionEnabled = YES;
//        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonpress1:)];
//        [imageview1 addGestureRecognizer:singleTap1];
//        [singleTap1 release];
//        [myScrollView addSubview:imageview1];
//        [imageview1 release];
//        

        self.imageView1 = [[UIImageView alloc] init];
        self.imageView1.backgroundColor = [UIColor redColor];
        [self.imageView1 setImage:[UIImage imageNamed:@"1.jpg"]];
        self.imageView1.userInteractionEnabled = YES;
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonpress1)];
        [self.imageView1 addGestureRecognizer:singleTap1];
        
        
        
        self.imageView2 = [[UIImageView alloc] init];
        self.imageView2.backgroundColor = [UIColor blueColor];
        
        self.imageView3 = [[UIImageView alloc] init];
        self.imageView3.backgroundColor = [UIColor greenColor];
        
        self.label1 = [[UILabel alloc] init];
        self.label1.text = @"熘肝尖";
        self.label1.textAlignment = NSTextAlignmentCenter;
        self.label1.backgroundColor = [UIColor greenColor];
        
        self.label2 = [[UILabel alloc] init];
        self.label2.text = @"小炒肉";
        self.label2.textAlignment = NSTextAlignmentCenter;
        self.label2.backgroundColor = [UIColor cyanColor];
        
        self.label3 = [[UILabel alloc] init];
        self.label3.text = @"宫保鸡丁";
        self.label3.textAlignment = NSTextAlignmentCenter;
        self.label3.backgroundColor = [UIColor redColor];
        
        [self.contentView addSubview:self.imageView1];
        [self.contentView addSubview:self.imageView2];
        [self.contentView addSubview:self.imageView3];
        
        [self.contentView addSubview:self.label1];
        [self.contentView addSubview:self.label2];
        [self.contentView addSubview:self.label3];

    }
    
    
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat ImageWidth = (self.bounds.size.width - (10+10+5+5))/3;
    CGFloat ImageHeigh = self.bounds.size.height - (20 + 15);
    CGFloat labelX = ImageHeigh + 10;
    CGFloat labelY = self.bounds.size.height - ImageHeigh - 10;
    self.imageView1.frame = CGRectMake(10, 10, ImageWidth, ImageHeigh);
    
    self.imageView2.frame = CGRectMake(10+ImageWidth+5, 10, ImageWidth, ImageHeigh);
    
    self.imageView3.frame = CGRectMake(10+ImageWidth+5+5+ImageWidth, 10, ImageWidth, ImageHeigh);
    
    self.label1.frame = CGRectMake(10, labelX, ImageWidth, labelY);
    self.label2.frame = CGRectMake(10+ImageWidth+5, labelX, ImageWidth, labelY);
    self.label3.frame = CGRectMake(10+ImageWidth+5+5+ImageWidth, labelX, ImageWidth, labelY);
    
}
-(void)buttonpress1
{
    NSLog(@"按钮被点击了");
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
