//
//  RCTMyViewManager.m
//  Hybird
//
//  Created by 汪淼 on 2017/10/11.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "RCTMyViewManager.h"
#import <MapKit/MapKit.h>
#import "MyView.h"
//#import "RCTEventDispatcher.h"
#import <React/RCTEventDispatcher.h>

@implementation RCTMyViewManager
RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [[MyView alloc] initWithFrame: [UIScreen mainScreen].bounds];
}

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

@end
