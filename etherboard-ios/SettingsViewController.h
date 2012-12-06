//
//  SettingsViewController.h
//  etherboard-ios
//
//  Created by Team NaN on 12/3/12.
//  Copyright (c) 2012 Commission Junction. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController<UITextFieldDelegate>{
  IBOutlet UIViewController *cjSettingsController;
  NSString *configuredUrl;
}

@property (strong, nonatomic) UIViewController *cjSettingsController;

@property (strong, readwrite) NSString *configuredUrl;

@end