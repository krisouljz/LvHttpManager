//
//  LVTestAPIManager.m
//  LvHttpManager_Example
//
//  Created by 吕佳珍 on 2020/3/31.
//  Copyright © 2020 krisouljz. All rights reserved.
//

#import "LVTestAPIManager.h"

@implementation LVTestAPIManager

- (ICXNormalReqeustType)requestType{
    return ICXNormalReqeustTypeGET;
}

- (NSString *)requestURL {
    return @"https://mainapi.icarbonx.com/product/productSort/1";
}

- (NSDictionary *)params {
    return self.outerParams;
}

@end
