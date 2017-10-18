//
//  NotiClass.m
//  Hybird
//
//  Created by 汪淼 on 2017/10/18.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "NotiClass.h"

@implementation NotiClass

RCT_EXPORT_MODULE();

- (NSArray<NSString *> *)supportedEvents
{
  return @[@"SpotifyHelper"];
}

- (void)startObserving
{
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(emitEventInternal:)
                                               name:@"event-emitted"
                                             object:nil];
}
- (void)stopObserving
{
  [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)emitEventInternal:(NSNotification *)notification
{
  [self sendEventWithName:@"SpotifyHelper"
                     body:notification.object];
}



+ (void)emitEventWithName:(NSString *)name andPayload:(NSDictionary *)payload
{
  [[NSNotificationCenter defaultCenter] postNotificationName:@"event-emitted"
                                                      object:self
                                                    userInfo:payload];
}

@end
