//
//  SHSessionManager.m
//  PodsText
//
//  Created by SHyH5 on 2017/8/21.
//  Copyright © 2017年 SHyH5. All rights reserved.
//

#import "SHSessionManager.h"


static NSInteger const kDefaultRequestTime = 30;

@implementation SHSessionManager

+(instancetype)shareManager{
    static SHSessionManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[SHSessionManager alloc] init];
    });
    
    return manager;
    
}

-(instancetype)init{
    if (self = [super init]) {
        //初始化参数根据公司情况调整
        self.requestSerializer = [AFHTTPRequestSerializer serializer];
        self.responseSerializer = [AFJSONResponseSerializer serializer];
        //如果报接受类型不一致，请替换一致text/html  或者 text/plain
        self.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain", nil];
        self.requestSerializer.timeoutInterval = kDefaultRequestTime;
            }
    
    return self;

}

@end
