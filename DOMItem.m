//
//  NSObject+DMItem.m
//  RandomItems
//
//  Created by Dom on 1/28/15.
//  Copyright (c) 2015 Dom. All rights reserved.
//

#import "DOMItem.h"

@implementation DOMItem 

- (void) setItemName: (NSString *)str
{
    _itemName = str;
}
- (NSString *) itemName

{
    return _itemName;
}

- (void) setSerialNumber:(NSString *) str
{
    _serialNumber = str;
}

- (NSString *)serialNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v
{
  _valueInDollars = v;
}

- (int) valueInDollars;
{
    return _valueInDollars;
}

- (NSDate *)dateCreated
{
    return _dateCreated;
}

//designated initaliizer
- (instancetype) initWithItemName:(NSString *) name
                   valueInDollars: (int)value
                    serialNumber: (NSString *) sNumber;
{//Call the superclass's designated initialized
    self = [super init];
    
    //did the superclass's designated initlizer succeed?
    if (self) {
        //give the variable initial values
        _itemName= name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        // Set _dataCreated to the current data and time
        _dateCreated =  [[NSDate alloc]init];
    
    }
    return self;
}

//the designated initializer

+(instancetype) randomItem
{
    //Create an immutable array of three adjectives
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    //Create an immutable array of three nouns
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];

    //Get the index of a random adjective/noun from the lists
    // Note: The % operator, called the modulo operator gives you the remainder
    //so adjectiveIndex is a random number from 0 to 2 inclusive.
    
    NSInteger adjectiveIndex = arc4random() % [randomNounList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    //Note that NSInteger is not an object, but a type of "long"
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
                       
        DOMItem *newItem = [[self alloc] initWithItemName:randomName
                                            valueInDollars:randomValue
                                                serialNumber:randomSerialNumber];
            return newItem;
}

                    
//initializer 2
- (instancetype) initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
                    valueInDollars:0
                      serialNumber:@""];
}
//initializer 3
- (instancetype) init
{
    return [self initWithItemName:@"Item"];
}


//This is the silver challenge
- (instancetype)initWithItemName:(NSString *)name
                    serialNumber:(NSString *)Number {
    return [self initWithItemName:name
                   valueInDollars:0 //It is a default value
                     serialNumber:Number];
}

 
- (NSString *) description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat: @"%@ (%@): Worth $%d, recorder on %@",
    self.itemName,
    self.serialNumber,
    self.valueInDollars,
    self.dateCreated
    
     ];
        return descriptionString;

}


@end

