//
//  UserInforMode.m
//  UserInforManger
//
//  Created by 郝靓 on 2018/7/18.
//  Copyright © 2018年 郝靓. All rights reserved.
//

#import "UserInforMode.h"

@implementation UserInforMode

+ (instancetype)userInforModeWithDict:(NSDictionary *)dict{
   
    UserInforMode * mode = [[self alloc] init];
    [mode setValuesForKeysWithDictionary:dict];
    return mode;
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {}

-(NSDictionary *)toDictionary{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    
    if(self.name != nil){
        dictionary[@"name"] = self.name;
    }
    if(self.sex != nil){
        dictionary[@"sex"] = self.sex;
    }
    if(self.phone != nil){
        dictionary[@"phone"] = self.phone;
    }
    if(self.age != nil){
        dictionary[@"age"] = self.age;
    }
    if(self.userId != nil){
        dictionary[@"userId"] = self.userId;
    }
    if(self.useNick != nil){
        dictionary[@"useNick"] = self.useNick;
    }
    
    
   
    return dictionary;
}
@end
