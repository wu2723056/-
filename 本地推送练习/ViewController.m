//
//  ViewController.m
//  本地推送练习
//
//  Created by 尹晓明 on 16/1/18.
//  Copyright © 2016年 尹晓明. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建本地推送对象
    UILocalNotification*notification=[[UILocalNotification alloc]init];
    //设置属性
    notification.alertBody=@"今晚，猎个痛快";
    
    //设置发出时间
    notification.fireDate=[NSDate dateWithTimeIntervalSinceNow:5];
    
    //设置时区
    notification.timeZone=[NSTimeZone defaultTimeZone];
    
    //锁屏时提示文字
    notification.alertAction=@"满血复活了";
    
    //是否显示锁屏状态下的提示文字
    notification.hasAction=YES;
    
    //设置标题
    notification.alertTitle=@"提示";
    
    //应用程序角标数字
    notification.applicationIconBadgeNumber=1;
    
    //绑定本地推送
    [[UIApplication sharedApplication]scheduleLocalNotification:notification];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
