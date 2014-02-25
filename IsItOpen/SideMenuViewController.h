//
//  SideMenuViewController.h
//  IsItOpen
//
//  Created by Scott Hardy on 2/19/14.
//  Copyright (c) 2014 Scott Hardy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SideMenuViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableView;

@end
