//
//  Place.h
//  IsItOpen
//
//  Created by Scott Hardy on 2/16/14.
//  Copyright (c) 2014 Scott Hardy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Place : NSObject

@property (strong) NSString *name;
@property NSInteger status;

-(id)initPlaceWithName:(NSString *)name
         andStatus:(NSInteger)status;

-(NSString *)statusName;
-(UIColor *)statusColor;

@end
