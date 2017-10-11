//
//  MyView.m
//  Hybird
//
//  Created by 汪淼 on 2017/10/11.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "MyView.h"
#import "MyViewController.h"

@interface MyView()

@property (nonatomic, strong) UIView *myView;
@property (nonatomic, strong) MyViewController *myViewController;
@property (nonatomic, strong) UINavigationController * nav;

@end
@implementation MyView

- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor yellowColor];
    [self setUpUI];
  }
  return self;
}
- (void)setUpUI {
  self.myView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
  self.myView.backgroundColor = [UIColor redColor];
  [self addSubview:self.myView];
}

- (UIView *)myView {
  if (!_myView) {
    
    self.myViewController = [[MyViewController alloc] initWithNibName:@"MyViewController" bundle:nil];
    //    self.myViewController.view.backgroundColor = [UIColor redColor];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:self.myViewController];
    self.nav = nav;
    _myView = nav.view;
    _myView.backgroundColor = [UIColor redColor];
  }
  return _myView;
}


@end
