//
//  NSObject+DOMContainer.h
//  RandomItems
//
//  Created by Dom on 2/5/15.
//  Copyright (c) 2015 Dom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DOMItem.h"

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