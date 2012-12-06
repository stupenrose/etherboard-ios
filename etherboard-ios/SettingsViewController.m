//
//  SettingsViewController.m
//  etherboard-ios
//
//  Created by Team NaN on 12/3/12.
//  Copyright (c) 2012 Commission Junction. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController
@synthesize cjSettingsController;
@synthesize configuredUrl;
UITextField *textField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        configuredUrl = @"http://www.reddit.com";
        printf("configured url is %s",configuredUrl.cString);    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    textField = (UITextField*)[self.view viewWithTag:1];
    textField.text = configuredUrl;
    textField.delegate = self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"main view has been touched \n");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (BOOL) textFieldShouldEndEditing:(UITextField *)textField{
    configuredUrl = textField.text;
    printf("configured URL is now %s", configuredUrl.cString);
    return YES;
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    configuredUrl = textField.text;
    printf("Return was pressed");
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
