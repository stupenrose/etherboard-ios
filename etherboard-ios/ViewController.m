//
//  ViewController.m
//  etherboard-ios
//
//  Created by Team NaN on 11/29/12.
//  Copyright (c) 2012 Commission Junction. All rights reserved.
//

#import "ViewController.h"
#import "SettingsViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize cjSettingsController;

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
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(print_Message)];
    
    NSURLRequest* site = [self website];
    [self.iPhoneWebView loadRequest:site];
    
    self.accelerometer = [UIAccelerometer sharedAccelerometer];
    self.accelerometer.updateInterval = .1;
    self.accelerometer.delegate = self;

}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)print_Message {
    NSLog(@"Eh up, someone just pressed the button!");
    
    if (self.cjSettingsController == nil){
        self.cjSettingsController = [[SettingsViewController alloc] initWithNibName:@"SettingsViewController" bundle: nil];
    }
    
    [self.navigationController pushViewController:self.cjSettingsController animated: YES ];
}


@end					
