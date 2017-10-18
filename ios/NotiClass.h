//
//  NotiClass.h
//  Hybird
//
//  Created by 汪淼 on 2017/10/18.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import <React/RCTEventEmitter.h>
#import <React/RCTBridgeModule.h>

#define RNIOSExportJsToReact(noti) [[NSNotificationCenter defaultCenter] postNotificationName:@"event-emitted" object:noti];

@interface NotiClass : RCTEventEmitter <RCTBridgeModule>

+ (void)emitEventWithName:(NSString *)name andPayload:(NSDictionary *)payload;

@end
