//
//  UserInforManger.h
//  UserInforManger
//
//  Created by 郝靓 on 2018/7/19.
//  Copyright © 2018年 郝靓. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInforMode.h"

@interface UserInforManger : NSObject

/** 单例*/
+ (UserInforManger *)shareManager;

// 删除数据
- (void)clearUserInfor;

// 保存
+ (void)setUserInfo:(NSDictionary *)newUserInfo;


/**
 *  获取用户信息
 */
+ (UserInforMode *)fetchUserInfo;


/**
 *  更新用户信息
 */
+ (void)setUserInfo:(NSDictionary *)newUserInfo;

/** 转字典*/
-(NSDictionary *)toDictionary;

@end








