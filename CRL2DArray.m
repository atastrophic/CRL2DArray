//
//  CRLTwoDArray.m
//  JewelnJewels
//
//  Created by tGilani on 20/11/2012.
//
//

#import "CRL2DArray.h"
@interface CRL2DArray ()
{
    int capacity;
}
@property (nonatomic, retain) NSMutableArray *outerArray;
@end

@implementation CRL2DArray
@synthesize outerArray;

- (id) initWithRows:(int)x columns:(int)y
{
    if (self = [super init])
    {
        capacity = y;
        self.outerArray = [NSMutableArray array];
        for (int i = 0; i < x; i++) {
            NSMutableArray *innerArray = [NSMutableArray array];
            for (int j = 0; j < y; j++) {
                [innerArray addObject:kCRL2DArrayEmptyKey];
            }
            [self.outerArray addObject:innerArray];
        }
    }
    return self;
}

- (BOOL) insertObject:(id)data atRow:(int)x column:(int)y
{
    if (x < outerArray.count) {
        NSMutableArray *array = [outerArray objectAtIndex:x];
        if (y < capacity) {
            if (data == nil)
                [array replaceObjectAtIndex:y withObject:kCRL2DArrayEmptyKey];
            else
                [array replaceObjectAtIndex:y withObject:data];
            return YES;
        }
    }
    [NSException raise:@"Index out of Bounds" format:@"The Indices Provided were Incorrect %i, %i", x,y];
    return NO;
}

- (id) objectAtRow:(int)x column:(int)y
{
    if (x < outerArray.count) {
        NSMutableArray *array = [outerArray objectAtIndex:x];
        if (y < capacity) {
            id data = (id)[array objectAtIndex:y];
            if ([data isKindOfClass:[NSString class]])
                return nil;
            else
                return data;
        }
    }
    
    [NSException raise:@"Index out of Bounds" format:@"The Indices Provided were Incorrect %i, %i", x,y];
    return nil;
}

- (void) removeAllObjects
{
    [self.outerArray removeAllObjects];
}

@end
