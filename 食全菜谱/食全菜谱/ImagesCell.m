//
//  ImagesCell.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/30.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "ImagesCell.h"
@interface ImagesCell()

@property(nonatomic,strong)UIImageView *imageView1;

@property(nonatomic,strong)UILabel *label1;

@property(nonatomic,strong)UIImageView *imageView2;

@property(nonatomic,strong)UILabel *label2;

@end
@implementation ImagesCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self)
    {
        self.imageView1 = [[UIImageView alloc] init];
        self.imageView2 = [[UIImageView alloc] init];
        
        self.label1 = [[UILabel alloc] init];
        self.label2 = [[UILabel alloc] init];
        
        self.imageView1.backgroundColor = [UIColor blueColor];
        self.imageView2.backgroundColor = [UIColor blueColor];
        
        //self.label1.backgroundColor = [UIColor redColor];
        //self.label2.backgroundColor = [UIColor redColor];
        
        [self.contentView addSubview:self.imageView1];
        [self.contentView addSubview:self.imageView2];
        [self.contentView addSubview:self.label1];
        [self.contentView addSubview:self.label2];
    }
    
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat imageViewW = (self.bounds.size.width-10-10-20)/2;
    CGFloat imageViewH = 259*imageViewW/335;
    
    self.imageView1.frame = CGRectMake(10, 10, imageViewW, imageViewH);
    self.label1.frame = CGRectMake(10, imageViewH+10, imageViewW, self.bounds.size.height-imageViewH-10);
    [self.imageView1 setImage:[UIImage imageNamed:@"3.jpg"]];
    self.label1.text = @"炝拌西兰花";
    self.label1.textAlignment = NSTextAlignmentCenter;
    
    self.imageView2.frame = CGRectMake(10+imageViewW+20, 10, imageViewW, imageViewH);
    self.label2.frame = CGRectMake(10+imageViewW+20, 10+imageViewH, imageViewW, self.bounds.size.height-imageViewH-10);
    [self.imageView2 setImage:[UIImage imageNamed:@"4.jpg"]];
    self.label2.text = @"西兰花炒虾仁";
    self.label2.textAlignment = NSTextAlignmentCenter;
                                       
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
