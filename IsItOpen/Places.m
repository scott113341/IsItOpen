//
//  Places.m
//  IsItOpen
//
//  Created by Scott Hardy on 2/16/14.
//  Copyright (c) 2014 Scott Hardy. All rights reserved.
//

#import "Places.h"

@implementation Places

-(id)init
{
    if (self = [super init]) {
        self.all = [[NSMutableArray alloc] init];
        
        [self.all addObject:[[Place alloc] initPlaceWithName:@"Meow City"
                                                   andStatus:0]];
        
        [self.all addObject:[[Place alloc] initPlaceWithName:@"The Pwn Zone"
                                                   andStatus:1]];
        
        [self.all addObject:[[Place alloc] initPlaceWithName:@"Some Other Place"
                                                   andStatus:2]];

    }
    return self;
}

-(Place *)placeAtIndex:(NSInteger)index
{
    return [self.all objectAtIndex:index];
}

+(id)sharedInstance
{
    static Place *sharedPlace = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedPlace = [[self alloc] init];
    });
    return sharedPlace;
}




// UITableViewDataSource protocol
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.all count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellID = @"placeCell";
    UITableViewCell *newCell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!newCell) {
        newCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    Place *place = [self placeAtIndex:[indexPath row]];
    
    newCell.textLabel.text = place.name;
    newCell.detailTextLabel.text = [place statusName];
    newCell.detailTextLabel.textColor = [place statusColor];
    newCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    UIView *statusBar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, newCell.indentationWidth, tableView.rowHeight)];
    statusBar.backgroundColor = [place statusColor];
    [newCell.contentView addSubview:statusBar];
    
    
    //newCell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Stars"]];
    //newCell.imageView.image = [UIImage imageNamed:@"Stars"];
    
    return newCell;
}

@end
