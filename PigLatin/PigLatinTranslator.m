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
        _consonants = [NSCharacterSet characterSetWithCharactersInString:@"bcdfghjklmnpqrstvwxyz"];
        _vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    }
    return self;
}

-(NSString *) stringByPigLatinization:(NSArray *)words {
    NSString* pigLatin = @"";
    
    for (NSString* word in words) {
        NSString* firstCharacter = [word substringWithRange:NSMakeRange(0, 1)];
        NSString *restCharacter = [word substringWithRange:NSMakeRange(1, [word length] - 1)];
        
        _vowels = [_vowels invertedSet];
        NSRange range1 = [firstCharacter rangeOfCharacterFromSet:_vowels];
        if (range1.location == NSNotFound) {
            pigLatin = [firstCharacter stringByAppendingString:restCharacter];
            pigLatin = [pigLatin stringByAppendingString:@"way"];
        }
        
        _consonants = [_consonants invertedSet];
        NSRange range2 = [firstCharacter rangeOfCharacterFromSet:_consonants];
        
    }
    return pigLatin;
}

@end
