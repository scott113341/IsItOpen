//
//  Place.m
//  IsItOpen
//
//  Created by Scott Hardy on 2/16/14.
//  Copyright (c) 2014 Scott Hardy. All rights reserved.
//

#import "Place.h"
#import "UIColor+Hex.h"

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

-(UIColor *)statusColor
{
    NSInteger status = self.status;
    
    if (status == 0) return [UIColor redColor];
    if (status == 1) return [UIColor colorWithHex:@"#00B346"];
    else return [UIColor colorWithHex:@"#D5DB16"];
}

@end
