//
//  SideMenuRootViewController.m
//  IsItOpen
//
//  Created by Scott Hardy on 2/19/14.
//  Copyright (c) 2014 Scott Hardy. All rights reserved.
//

#import "SideMenuRootViewController.h"

@interface SideMenuRootViewController ()

@end

@implementation SideMenuRootViewController

-(void)awakeFromNib
{
    self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"rootNavigationController"];
    self.menuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"sideMenuViewController"];
    
    self.backgroundImage = [UIImage imageNamed:@"Stars"];
}

@end
