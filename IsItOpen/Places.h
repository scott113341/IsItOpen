//
//  Places.h
//  IsItOpen
//
//  Created by Scott Hardy on 2/16/14.
//  Copyright (c) 2014 Scott Hardy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Place.h"

@interface Places : NSObject <UITableViewDataSource>

@property (strong) NSMutableArray *all;

-(Place *)placeAtIndex:(NSInteger)id;

+(id)sharedInstance;

@end
