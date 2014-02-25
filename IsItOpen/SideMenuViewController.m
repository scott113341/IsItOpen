//
//  SideMenuViewController.m
//  IsItOpen
//
//  Created by Scott Hardy on 2/19/14.
//  Copyright (c) 2014 Scott Hardy. All rights reserved.
//

#import "SideMenuViewController.h"

@interface SideMenuViewController ()

@end

@implementation SideMenuViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView = ({
        UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (self.view.frame.size.height - 54 * 5) / 2.0f, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
        
        tableView.delegate = self;
        tableView.dataSource = self;
        
        tableView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleWidth;
        tableView.backgroundColor = [UIColor clearColor];
        tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        tableView.bounces = NO;
        tableView;
    });
    [self.view addSubview:self.tableView];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}




// UITableViewDataSource protocol
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellID = @"sideMenuCell";
    UITableViewCell *newCell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!newCell) {
        newCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    newCell.textLabel.text = [NSString stringWithFormat:@"Menu Item %i", indexPath.row+1];
    newCell.backgroundColor = [UIColor clearColor];
    newCell.textLabel.textColor = [UIColor whiteColor];
    
    return newCell;
}

@end
