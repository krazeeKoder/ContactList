//
//  InputCollector.m
//  ContactList
//
//  Created by Anthony Tulai on 2016-01-12.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    NSLog(@"%@", promptString);
    char cUserInput[255];
    fgets(cUserInput,255, stdin);
    NSString *userInput = [NSString stringWithUTF8String:cUserInput];
    
    return userInput;
    
}

@end
