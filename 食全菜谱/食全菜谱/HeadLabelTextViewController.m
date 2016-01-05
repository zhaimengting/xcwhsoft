//
//  HeadLabelTextViewController.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/30.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "HeadLabelTextViewController.h"

@interface HeadLabelTextViewController ()<UITextViewDelegate>
@property(nonatomic,strong)UITextView *textView;
@end

@implementation HeadLabelTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*设置View属性*/
    self.view.backgroundColor = [UIColor cyanColor];
    self.navigationItem.title = @"眼外伤";
    self.textView.delegate = self;
    /*textView属性*/
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    
    self.textView.text = @"眼外伤是由于机械性、物理性、化学性等因素直接作用于眼部，引起眼的结构和功能损害。眼外伤根据外伤的致伤因素，可分为机械性和非机械性。机械性眼外伤通常包括挫伤、穿通伤、异物伤等；非机械性眼外伤包括热烧伤、化学伤、辐射伤和毒气伤等。";
    
    self.textView.font = [UIFont systemFontOfSize:15];
    
    /*设置文字不可编辑*/
    [self.textView setEditable:NO];
    
    [self.view addSubview:self.textView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
