//
//  UserInforManger.m
//  UserInforManger
//
//  Created by 郝靓 on 2018/7/19.
//  Copyright © 2018年 郝靓. All rights reserved.
//

#import "UserInforManger.h"



@implementation UserInforManger

// 单例
+ (UserInforManger *)shareManager{
    // 单例的写法，线程安全
    static UserInforManger * userInforManger;
    
    // 标识
    static dispatch_once_t token;
    // 这个函数，会保证Block只执行一次
    dispatch_once(&token, ^{
        userInforManger = [[UserInforManger alloc] init];
    });
    return userInforManger;
}



// 退登
- (void)clearUserInfor{
    NSUserDefaults * userdefaults = [NSUserDefaults standardUserDefaults];
    [userdefaults removeObjectForKey:@"user_infor"];
    [userdefaults synchronize];
    
}

/** 更新用户信息*/
+ (void)setUserInfo:(NSDictionary *)newUserInfo{
    
    NSUserDefaults *df = [NSUserDefaults standardUserDefaults];
    [df setObject:newUserInfo forKey:@"user_infor"];
    [df synchronize];
}


/** 获取用户信息*/
+ (UserInforMode *)fetchUserInfo{
    NSUserDefaults *df = [NSUserDefaults standardUserDefaults];
    NSDictionary * dic = [df valueForKey:@"user_infor"];
    UserInforMode *model = [UserInforMode userInforModeWithDict:dic];
    return model;
}
@end






