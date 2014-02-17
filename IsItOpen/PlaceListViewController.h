//
//  PlaceListViewController.h
//  IsItOpen
//
//  Created by Scott Hardy on 2/14/14.
//  Copyright (c) 2014 Scott Hardy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PLaces.h"

@interface PlaceListViewController : UITableViewController <UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *placeListTableView;

@property (strong, nonatomic) UIRefreshControl *refreshControl;

@property (strong) Places *places;

@end
