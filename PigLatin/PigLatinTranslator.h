//
//  PigLatinTranslator.h
//  PigLatin
//
//  Created by Brian Vo on 2018-04-13.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PigLatinTranslator : NSObject

@property (nonatomic, strong) NSCharacterSet *punctuations;
@property (nonatomic, strong) NSCharacterSet *vowels;

-(NSString *) stringByPigLatinization:(NSArray *)words;

@end
