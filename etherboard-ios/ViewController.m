//
//  ViewController.m
//  etherboard-ios
//
//  Created by Team NaN on 11/29/12.
//  Copyright (c) 2012 Commission Junction. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSURLRequest*) website
{
    NSURL *url =
     [NSURL URLWithString:
          [NSString stringWithFormat:@"http://www.reddit.com"]
     ];
    
    NSURLRequest *request = [ NSURLRequest requestWithURL: url ];
    return request;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURLRequest* site = [self website];
    [self.iPhoneWebView loadRequest:site];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end					
