//
//  MaterialListView.h
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/25.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MaterialListView : UIView
/**
 *跳转到详情页面
 */
@property(nonatomic,copy)void(^pushFoodDetailsVC)(UIViewController *vc);
@end
