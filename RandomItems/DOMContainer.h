//
//  DOMContainer.h
//  RandomItems
//  Copyright (c) 2015 Dom. All rights reserved.
//


#import "DOMItem.h"

@interface DOMContainer : DOMItem
{
    NSMutableArray *_subItems;
}

- (instancetype)initWithContainerName:(NSString *)name
                       valueInDollars:(int)value;

- (NSMutableArray *)subItems;

- (int)totalValueDollars;

@end