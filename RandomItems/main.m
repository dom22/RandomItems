//
//  main.m
//  RandomItems
//
//  Created by Dom on 1/28/15.
//  Copyright (c) 2015 Dom. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "DOMItem.h"
#import "DOMContainer.h"

int main(int argc, const char * argv[])
{
@autoreleasepool {
    NSMutableArray *items = [[NSMutableArray alloc]init];
    for (int i=0; i<10; i++) {
        DOMItem *item = [DOMItem randomItem];
        [items addObject:item];
    }
    NSLog(@"%@",items);

    //Gold CHallenge 
    
    
    //DOMContainer *container = [[DOMContainer alloc]initWithContainerName:@"Container" valueInDollars:50];
    //for (DOMItem *item in items)
    //{
      //  [container.subItems  addObject:item];
    //}
    //NSLog(@"%@",container);
    
}
return 0;
}

