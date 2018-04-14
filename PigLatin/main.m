//
//  main.m
//  PigLatin
//
//  Created by Brian Vo on 2018-04-13.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputHandler = [InputHandler new];
        // *piglatinTranslator = [PigLatinTranslator new];
        
        while(1) {
            
            NSString *inputString = [inputHandler parse];
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSString *pigLatin = [NSString stringByPigLatinization:commandWords];
            
            NSLog(@"Piglatin Translator: %@", pigLatin);
        }
        
    }
    return 0;
}
