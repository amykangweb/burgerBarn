//
//  main.m
//  burgerBarn
//
//  Created by Amy Kang on 4/27/17.
//  Copyright © 2017 Amy Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSDictionary *orderDict = @{
                                    @"burgers": @5,
                                    @"shakes": @3,
                                    @"customers": @4,
                                    @"isTakeOut": @NO,
                                    @"subtotal": @0.0
                                    };
        
        float burgerPrice = 4;
        float shakePrice = 3;
        float subtotal;
        
        subtotal = (burgerPrice * [[orderDict valueForKey:@"burgers"]intValue]) + (shakePrice * [[orderDict valueForKey:@"shakes"]intValue]);
        
        NSMutableDictionary *outputDict = [NSMutableDictionary dictionaryWithDictionary:orderDict];
        
        [outputDict setValue:@(subtotal) forKey:@"subtotal"];
        
        // Array example only
        
        float subtotal2 = 0;
        int customerAge;
        
        NSArray *agesArray = @[@5, @5, @14, @42, @77];
        
        for (NSNumber *age in agesArray) {
            // Some logic here.
            customerAge = [age intValue];
            subtotal2 = subtotal2 + 1;
        }
        
        // history class examples
        
        NSArray *quizArray = @[@100, @94, @83, @77, @72];
        
        float scoreTotal = 0;
        
        for (NSNumber *quizScore in quizArray) {
            scoreTotal = scoreTotal + [quizScore intValue];
        }
        
        float average = scoreTotal / [quizArray count];
        
        NSMutableArray *seatingArray = [NSMutableArray arrayWithObjects:@"Page", @"Chris", @"Ernest", @"Mike", @"Jon", nil];
        
        [seatingArray removeObjectAtIndex:3];
        
        [seatingArray removeObjectIdenticalTo:@"Mike"];
        
        [seatingArray insertObject:@"Phil" atIndex:1];
        
    }
    return 0;
}
