//
//  ViewController.h
//  etherboard-ios
//
//  Created by Team NaN on 11/29/12.
//  Copyright (c) 2012 Commission Junction. All rights reserved.

#import <UIKit/UIKit.h>
#import "SettingsViewController.h"

@interface ViewController : UIViewController <UIAccelerometerDelegate> {
    SettingsViewController *cjSettingsController;
}

- (NSURLRequest*)website;

@property (weak, nonatomic) IBOutlet UIWebView* iPhoneWebView;
@property (nonatomic, retain) UIAccelerometer *accelerometer;
@property (nonatomic, retain) SettingsViewController *cjSettingsController;

@end
