//
//  TopDetailReusableView.h
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/31.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TopDetailReusableView : UICollectionReusableView
//从1 开始
@property(nonatomic,copy)void(^clickedIndex)(NSInteger index);

-(void)createImageViewWithNum:(NSInteger)index;
@end
