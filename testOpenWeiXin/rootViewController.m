//
//  rootViewController.m
//  testOpenWeiXin
//
//  Created by siecom-mac on 16/1/15.
//  Copyright © 2016年 siecom-mac. All rights reserved.
//

#import "rootViewController.h"

@interface rootViewController ()

@end

@implementation rootViewController
{
    UIWebView *_webView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame=CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
-(void)btnClick
{
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectZero];
    //qq聊天mqq://im/chat?chat_type=wpa&uin=981185497&version=1&src_type=web
    //微信: weixin://qr/GHUuIcDEiv71h9FCnyA8
    NSURL *url = [NSURL URLWithString:@"mqq://im/chat?chat_type=wpa&uin=981185497&version=1&src_type=web"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //webView.delegate = self;
    [webView loadRequest:request];
    [self.view addSubview:webView];
     /*_webView=[[UIWebView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    NSString* path = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSURL* url = [NSURL fileURLWithPath:path];
    [self.view addSubview:_webView];*/
    //http://weixin.qq.com/r/UUzVzXLEEpC-brTau9xID
    //http://weixin.qq.com/r/UUzVzXLEEpC-brTau9xID
    /*NSURL *url =[[NSURL alloc]initWithString:@"http://qm.qq.com/cgi-bin/qm/qr?k=UIqVzqC2qqvk2JFToJ66tXfeX-CKvXee"];

    [[UIApplication sharedApplication]openURL:url];
    //是否可以打开上述url
    [[UIApplication sharedApplication] canOpenURL:url];*/

    //NSURLRequest* request = [NSURLRequest requestWithURL:url] ;
    //[_webView loadRequest:request];
}
@end
