//
//  NSObject+DMItem.h
//  RandomItems
//
//  Created by Dom on 1/28/15.
//  Copyright (c) 2015 Dom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DOMItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

+ (instancetype) randomItem;

//This is i list of the different setters & getters
- (void) setItemName: (NSString *)str;
- (NSString *)itemName;

- (void) setSerialNumber: (NSString *)str;
- (NSString *)serialNumber;

- (void) setValueInDollars:(int)v;
- (int) valueInDollars;

- (NSDate *) dateCreated;




@end





