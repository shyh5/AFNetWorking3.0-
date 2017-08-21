//
//  SHSessionManager.h
//  PodsText
//
//  Created by SHyH5 on 2017/8/21.
//  Copyright © 2017年 SHyH5. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface SHSessionManager : AFHTTPSessionManager

+(instancetype)shareManager;

@end
