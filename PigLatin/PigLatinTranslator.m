//
//  PigLatinTranslator.m
//  PigLatin
//
//  Created by Brian Vo on 2018-04-13.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "PigLatinTranslator.h"

@implementation PigLatinTranslator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _punctuations = [NSCharacterSet characterSetWithCharactersInString:@".,?!':;-"];
        _vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    }
    return self;
}

-(NSString *) stringByPigLatinization:(NSArray *)words {
    NSString *fullString = @"";
    NSString* pigLatin = @"";
    
    for (NSString* word in words) {
        
        NSRange firstVowel = [word rangeOfCharacterFromSet:_vowels];
        
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
