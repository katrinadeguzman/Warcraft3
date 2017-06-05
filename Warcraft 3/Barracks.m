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
- (Peasant*)trainPeasant
{
    if ([self canTrainPeasant])
    {
        Peasant *peasant = [[Peasant alloc] init];
        self.gold -= 90;
        self.food -= 5;
        return peasant;
    }
    else
    {
        return nil;
    }
}
- (BOOL)canTrainFootman
{
    BOOL canTrain = YES;
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

- (BOOL)canTrainPeasant
{
    BOOL canTrain = YES;
    if (self.food >= 5 && self.gold >=90)
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
