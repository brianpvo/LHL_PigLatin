//
//  main.m
//  PigLatin
//
//  Created by Brian Vo on 2018-04-13.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PigLatinTranslator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputHandler = [InputHandler new];
        PigLatinTranslator *piglatinTranslator = [PigLatinTranslator new];
        
        NSString *inputString = [inputHandler parse];
        NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
        
        NSString *pigLatin = [piglatinTranslator stringByPigLatinization:commandWords];
        
        NSLog(@"Piglatin Translator: %@", pigLatin);
        
    }
    return 0;
}
