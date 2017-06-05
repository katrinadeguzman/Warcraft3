//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

-(instancetype)init{
    _gold = 1000;
    _food = 80;
    return self;
}

- (Footman *)trainFootman
{
    if ([self canTrainFootman])
    {
        Footman *footman = [[Footman alloc] init];
        self.gold -= 135;
        self.food -= 2;
        return footman;
    }
    else
    {
        return nil;
    }
}

- (BOOL)canTrainFootman
{
    BOOL canTrain = true;
    if (self.food >= 2 && self.gold >=135)
    {
        canTrain = YES;
    }
    else
    {
        canTrain = NO;
    }
    return canTrain;
}
@end
