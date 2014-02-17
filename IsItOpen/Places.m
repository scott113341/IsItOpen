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
        
        [self.all addObject:[[Place alloc] initPlaceWithName:@"Poop Zone"
                                                   andStatus:1]];

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
    UITableViewCell *newCell;
    newCell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!newCell) {
        newCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    Place *place = [self placeAtIndex:[indexPath row]];
    
    newCell.textLabel.text = place.name;
    newCell.detailTextLabel.text = [place statusName];
    newCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return newCell;
}

@end
