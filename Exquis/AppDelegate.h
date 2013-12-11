//
//  AppDelegate.h
//  Exquis
//
//  Created by BRD on 07/11/13.
//  Copyright (c) 2013 BRD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExNavigationController.h"
#include <pjsua-lib/pjsua.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{ pjsua_call_id call;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;
@end
