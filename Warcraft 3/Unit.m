//
//  Unit.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Unit.h"

@implementation Unit

- (instancetype)initWithHP:(int)hp AP:(int)ap
{
    self = [super init];
    self.healthPoints = hp;
    self.attackPower = ap;
    
    return self;
}
@end
