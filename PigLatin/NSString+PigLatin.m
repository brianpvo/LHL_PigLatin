//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by Brian Vo on 2018-04-13.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

+(NSString *) stringByPigLatinization:(NSArray *)words {
    NSCharacterSet *punctuations = [NSCharacterSet characterSetWithCharactersInString:@".,?!':;-"];
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    
    NSString *fullString = @"";
    NSString* pigLatin = @"";
    
    for (NSString* word in words) {
        
        NSRange firstVowel = [word rangeOfCharacterFromSet:vowels];
        
        //        NSLog(@"range is : %@", NSStringFromRange(firstVowel));
        
        if (firstVowel.location == 0) {
            pigLatin = [word stringByAppendingString:@"way"];
        } else {
            NSString *restWord = [word substringToIndex:firstVowel.location];
            pigLatin = [word substringFromIndex:firstVowel.location];
            pigLatin = [pigLatin stringByAppendingString:restWord];
            pigLatin = [pigLatin stringByAppendingString:@"ay"];
        }
        fullString = [fullString stringByAppendingString:pigLatin];
        fullString = [fullString stringByAppendingString:@" "];
    }
    return fullString;
}


@end
