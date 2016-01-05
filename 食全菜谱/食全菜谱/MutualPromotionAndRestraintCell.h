//
//  MutualPromotionAndRestraintCell.h
//  食全菜谱
//
//  Created by 翔辰文化 on 16/1/4.
//  Copyright © 2016年 北京翔辰文化发展有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MutualPromotionAndRestraintCell : UICollectionViewCell
/**
 *适宜搭配
 */
@property(nonatomic,strong)UILabel *goodLB1;
@property(nonatomic,strong)UILabel *goodLB2;
/**
 *不适宜搭配
 */
@property(nonatomic,strong)UILabel *badLB1;
@property(nonatomic,strong)UILabel *badLB2;
@end
