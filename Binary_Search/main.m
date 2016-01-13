//
//  main.m
//  Binary_Search
//
//  Created by Kerry Toonen on 2016-01-12.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    NSArray *numbers = @[@2,@1,@3,@5,@7,@100,@1,@2,@4,@5,@10,@14,@67];
    NSSortDescriptor *sd = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    numbers = [numbers sortedArrayUsingDescriptors:@[sd]];
    NSUInteger searchObject = 300;
    NSNumber *val = [NSNumber numberWithInteger:searchObject];
    NSRange searchRange = NSMakeRange(0, [numbers count]);
    NSUInteger findIndex = [numbers indexOfObject:val
                                    inSortedRange:searchRange
                                    options:NSBinarySearchingFirstEqual
                                    usingComparator:^(id obj1, id obj2)
                            {
                                return [obj1 compare:obj2];
                            }];

    
    if (findIndex > 13) {
        return -1;}
    
    else
    {
        NSLog (@"%lu",(unsigned long)findIndex);}
}

