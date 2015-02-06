//
//  DOMContainer.m
//  RandomItems
//
//  Created by Dom on 2/5/15.
//  Copyright (c) 2015 Dom. All rights reserved.
//

#import "DOMContainer.h"
#import "DOMItem.h"
#import "DOMItem.m"

@implementation DOMContainer

- (instancetype)initWithContainerName:(NSString *)name valueInDollars:(int)value
{
    self = [super initWithItemName:name valueInDollars:value serialNumber:@""];

    if (self) {
        _subItems = [[NSMutableArray alloc]init];
    }
    
    return self;
}

- (NSMutableArray *)subItems
{
    return _subItems;
}

- (int)totalValueDollars
{
    int valueOfSubItems = 0;
    for (DOMItem *item in self.subItems)
    {
        valueOfSubItems += item.valueInDollars;
    }
    return (valueOfSubItems + self.valueInDollars);
}

- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc]initWithFormat:@"%@: Worth $%d\n%@",self.itemName,[self totalValueDollars], [self.subItems description]];
    return descriptionString;
}

@end