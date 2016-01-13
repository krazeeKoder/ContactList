//
//  main.m
//  ContactList
//
//  Created by Anthony Tulai on 2016-01-12.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    
ContactList *contactList = [[ContactList alloc] init];
    
    while (YES) {
        
        NSString *menuString = @"What would you like to do next?\nnew - Create a new contact list\nlist - List all contacts\nshow - Show a contact based on ID\nfind - Enter find and a search parameter to find contact\nquit - Exit Application";
        
        
        InputCollector *userInput = [[InputCollector alloc] init];
        
        NSString *userSelection = [userInput inputForPrompt:menuString];
        
        if ([userSelection isEqual:@"quit"]) {
            return 0;
        }
        else if ([userSelection isEqual:@"new"]) {
            NSString *contactName = [userInput inputForPrompt:@"Enter a new contact name: "];
            NSString *contactEmail = [userInput inputForPrompt:@"Enter contact email: "];
            Contact *contact = [[Contact alloc] init];
            
            contact.name = contactName;
            contact.email = contactEmail;
            
            [contactList addContact:contact];
        }
        else if ([userSelection isEqual:@"show"]) {

            NSString *contactIDString = [userInput inputForPrompt:@"Enter contact ID: "];
            NSCharacterSet *nonNumberSet = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet];
            if ([contactIDString rangeOfCharacterFromSet:nonNumberSet].location != NSNotFound) {
                NSLog(@"Input contains non number characters");
                return 5;
            }
            NSInteger contactID = [contactIDString intValue];
            if (contactID < 0 || contactID > [contactList.contactList count]) {
                NSLog(@"Your number is outsider the scope of the list");
            }
            
            Contact *contactFromID = [contactList.contactList objectAtIndex: contactID];
            NSLog(@"Name: %@", contactFromID.name);
            NSLog(@"Email: %@", contactFromID.email);
            
        }
        else if ([userSelection isEqual:@"list"]) {
            [contactList printContactList];
        }
        else if([[userSelection substringToIndex:4] isEqual: @"find"]) {
            [contactList findContact:userSelection];
        }
    }
    
    return 0;
}
