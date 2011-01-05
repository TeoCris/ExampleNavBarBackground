/*
 * Copyright (c) 2010-2010 Sebastian Celis
 * All rights reserved.
 */

#import "SCAppUtils.h"

@implementation SCAppUtils

+ (void)customizeNavigationController:(UINavigationController *)navController
{
    UINavigationBar *navBar = [navController navigationBar];
    [navBar setTintColor:kSCNavigationBarTintColor];
    
    UIView *myView = (UIView *)[navBar viewWithTag:kSCNavigationBarBackgroundImageTag];
    if (myView == nil)
    {
	myView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 44.0)];
	myView.backgroundColor = [UIColor redColor];
		
	myView.tag = kSCNavigationBarBackgroundImageTag;
	[navBar insertSubview:myView atIndex:0];
	[myView release];
    }
}

@end
