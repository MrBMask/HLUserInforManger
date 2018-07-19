//
//  UserInforMode.h
//  UserInforManger
//
//  Created by 郝靓 on 2018/7/18.
//  Copyright © 2018年 郝靓. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface UserInforMode : NSObject
/**姓名*/
@property (nonatomic, copy) NSString * name;

/**性别*/
@property (nonatomic, copy) NSString * sex;

/**手机*/
@property (nonatomic, copy) NSString * phone ;

/**年龄*/
@property (nonatomic, copy) NSString * age;

@property (nonatomic, copy) NSString * userId;

@property (nonatomic, copy) NSString * useNick;

+ (instancetype)userInforModeWithDict:(NSDictionary *)dict;
/** 模型转化字典*/
- (NSDictionary *)toDictionary;

@end










