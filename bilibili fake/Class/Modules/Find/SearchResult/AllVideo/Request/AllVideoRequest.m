//
//  AllVideoRequest.m
//  bilibili fake
//
//  Created by cxh on 16/9/9.
//  Copyright © 2016年 云之彼端. All rights reserved.
//

#import "AllVideoRequest.h"

@implementation AllVideoRequest
- (NSString *)URLString{
    return [NSString stringWithFormat:@"http://app.bilibili.com/x/v2/search?actionKey=appkey&appkey=27eb53fc9058f8c3&build=3710&device=phone&duration=0&keyword=%@&mobi_app=iphone&order=%@&platform=ios&pn=%lu&ps=%lu0&rid=%lu",_keyword,_order,_pn,_ps,_rid];
}

- (HTTPMethod)method; {
    return HTTPMethodGet;
}

- (NSTimeInterval)cacheTimeoutInterval; {
    return 60 * 30;
}

@end
