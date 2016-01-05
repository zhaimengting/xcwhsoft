//
//  MaterialScrollView.h
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/25.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MaterialScrollView : UIView
/**
 *滑动几个View
 */
@property(nonatomic,assign)NSInteger numOfView;
/**
 *记录点击的button的下标
 */
@property(nonatomic,assign)NSInteger buttonIndex;
//加载View
-(void)loadView:(UIView *)view;
//当前的View
-(UIView *)currentView;
///**
// *滑到第几个 View index从1开始
// */
@property(nonatomic,copy)void(^scrollToIndex)(NSUInteger index);
/**
 *滑动停止后，根据View找到相对应的Button的index
 */
@property(nonatomic,copy)void(^stopScrollToView)(UIView *view);
/**
 *点击到第几个view
 */
-(void)scrollToViewWithIndex:(NSInteger)index;

@end
