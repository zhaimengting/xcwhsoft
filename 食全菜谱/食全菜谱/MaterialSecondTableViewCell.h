//
//  MaterialSecondTableViewCell.h
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/28.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MaterialSecondTableViewCell : UITableViewCell
@property(nonatomic,copy)void(^pushNextVC)(UIViewController *);
@property (weak, nonatomic) IBOutlet UIButton *firstBtn;
@property (weak, nonatomic) IBOutlet UIButton *secondBtn;
@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *secLabel;

@end
