//
//  main.m
//  ContactList
//
//  Created by Anthony Tulai on 2016-01-12.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {

    
    NSString *menuString = @"What would you like to do next?\nnew - Create a new contact list\nlist - List all contacts\nquit - Exit Application";

    
    InputCollector *userInput = [[InputCollector alloc] init];
    
    NSString *userSelection = [userInput inputForPrompt:menuString];
    
    if ([userSelection isEqualToString:@"quit"]) {
        return 0;
    }
    if ([userSelection isEqualToString:@"new"]) {
        NSString *contactName = [userInput inputForPrompt:@"Enter a new contact name: "];
        NSString *contactEmail = [userInput inputForPrompt:@"Enter contact email: "];
    }
    
    NSLog(@"%@", userSelection);
    
    
    return 0;
}
