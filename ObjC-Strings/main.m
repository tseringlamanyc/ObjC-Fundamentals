//
//  main.m
//  ObjC-Strings
//
//  Created by Tsering Lama on 4/27/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 NSString is a class not a struct, which means it’s a reference type
 Strings are immutable by default, but they aren’t constant
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // MARK: Creating string
        NSString *myString = @"Hello commandline";
        NSLog(@"Original %@", myString);
        
        NSInteger number = 42;
        NSString *output = [NSString stringWithFormat:@"You picked %ld", (long)number];
        NSLog(@"%@", output);
        
        // MARK: Manipulating and evaluating strings
        NSLog(@"Replacing %@", [myString stringByReplacingOccurrencesOfString:@"Hello" withString:@"Goodbye"]); // replaces
        
        NSLog(@"Append %@", [myString stringByAppendingString:@" Sup"]); //adds
        
        NSLog(@"Formatting %@", [myString stringByAppendingFormat:@"-"]);
        
        NSLog(@"Substring %@", [myString substringToIndex: 1]); // substring
        
        NSLog(@"Seperating %@", [myString componentsSeparatedByString:@","]);
        
        NSLog(@"Is Equal %hhd",  [myString isEqualToString:@"Hello commandline"]);  // 0 is false , 1 is true
        
        
        // MARK: Mutable Strings
        // NSString is immutable, whereas NSMutableString is mutable
        
        NSMutableString *str1 = @"Hello"; // @ creates immutable string (NSString), cant assign mutable to immutable
        
        // Mutable initializers
        NSMutableString *hello = [@"Hello" mutableCopy];
        NSMutableString *hello1 = [NSMutableString stringWithFormat:@"..."];
        NSMutableString *longString = [NSMutableString stringWithCapacity:4096]; // store up to 4096 characters
        
        NSMutableString *first = [@"My string" mutableCopy];
        [first setString:@"Our string"]; // modifies and assigns new value
        NSLog(@"%@", first);
        
        NSString *second = [first copy]; // second wont change its value when first does vs second = first
        
        // MARK: Useful functions
        /* There are several global functions that create an NSString from various types of input data
         
         NSStringFromClass(): Give it a class name, e.g. [myObject class], and it will return “MyObject
         NSStringFromRect(): Give it a CGRect and get back the origin and size in one string.
         NSStringFromSize(): Give it a CGSize and get back the width and height values.
         NSStringFromPoint(): Give it a CGPoint and get back the X and Y coordinates
         */
        
    }
    return 0;
}
