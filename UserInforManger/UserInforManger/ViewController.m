//
//  ViewController.m
//  UserInforManger
//
//  Created by 郝靓 on 2018/7/18.
//  Copyright © 2018年 郝靓. All rights reserved.
//

#import "ViewController.h"
#import "UserInforMode.h"
#import "UserInforManger.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *sex;
@property (weak, nonatomic) IBOutlet UITextField *phone;
@property (weak, nonatomic) IBOutlet UITextField *age;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initDataInfor];
   
}
- (void)initDataInfor{
    NSDictionary * dic = @{
                           @"name":@"haoliang",
                           @"sex":@"男",
                           @"phone":@"18398616208",
                           @"age":@"26",
                           @"userId":@"23geg34",
                           @"useNick":@"BMask",
                           };
    UserInforMode * userInfoMode = [UserInforMode userInforModeWithDict:dic];
   
    [UserInforManger setUserInfo:dic];
    
    NSLog(@"%@",userInfoMode);
}
- (IBAction)processDelegateButton:(id)sender {
    UserInforManger * mange = [[UserInforManger alloc] init];
    [mange clearUserInfor];
}



- (IBAction)processSaveButton:(id)sender {
    NSLog(@"点击保存按钮");
    UserInforMode * mode = [UserInforManger fetchUserInfo];
    mode.name = self.name.text;
    NSDictionary * dic = [mode toDictionary];
    [UserInforManger setUserInfo:dic];
    NSLog(@"name=%@, sex=%@, phone=%@, age=%@, userId=%@, useNick=%@",mode.name, mode.sex, mode.phone, mode.age, mode.userId, mode.useNick);
}

- (IBAction)processFetchButton:(id)sender {
    UserInforMode * mode = [UserInforManger fetchUserInfo];
   
    NSLog(@"获得的数据%@",mode);
    NSLog(@"name=%@, sex=%@, phone=%@, age=%@, userId=%@, useNick=%@",mode.name, mode.sex, mode.phone, mode.age, mode.userId, mode.useNick);
    
}

@end





