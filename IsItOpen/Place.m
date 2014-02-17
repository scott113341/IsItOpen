//
//  Place.m
//  IsItOpen
//
//  Created by Scott Hardy on 2/16/14.
//  Copyright (c) 2014 Scott Hardy. All rights reserved.
//

#import "Place.h"

@implementation Place

-(id)initPlaceWithName:(NSString *)name andStatus:(NSInteger)status
{
    if (self = [super init]) {
        self.name = name;
        self.status = status;
    }
    return self;
}

-(NSString *)statusName
{
    NSInteger status = self.status;
    
    if (status == 0) return @"Closed";
    if (status == 1) return @"Open";
    else return @"Meow";
}

@end
