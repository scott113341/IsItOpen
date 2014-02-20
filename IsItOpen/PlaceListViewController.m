//
//  PlaceListViewController.m
//  IsItOpen
//
//  Created by Scott Hardy on 2/14/14.
//  Copyright (c) 2014 Scott Hardy. All rights reserved.
//

#import "PlaceListViewController.h"
#import "PlaceDetailViewController.h"
#import "Places.h"

@interface PlaceListViewController ()

@end

@implementation PlaceListViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.places = [Places sharedInstance];
    
    // add pull to refresh control
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
    [refreshControl addTarget:self action:@selector(refresh) forControlEvents:UIControlEventValueChanged];
    refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"Refreshing"];
    self.refreshControl = refreshControl;
    
    // set UITableViewDataSource
    self.placeListTableView.dataSource = self.places;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:nil action:nil];
}

-(void)refresh
{
    NSLog(@"refreshing");
    [self.refreshControl endRefreshing];
}




// UITableViewDelegate protocol
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyboard = self.storyboard;
    PlaceDetailViewController *placeDetailVC = [storyboard instantiateViewControllerWithIdentifier:@"PlaceDetailViewController"];
    
    placeDetailVC.title = [self.places placeAtIndex:[indexPath row]].name;
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:nil
                                                                  action:nil];
    [[self navigationItem] setBackBarButtonItem:backButton];
    
    [self.navigationController pushViewController:placeDetailVC animated:YES];
}

@end
