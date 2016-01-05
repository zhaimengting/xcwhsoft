//
//  InternalMedicineView.h
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/29.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InternalMedicineView : UIView
/*页面跳转 block传值*/
@property(nonatomic,copy)void(^pushNextVC)(UIViewController *);

@end
