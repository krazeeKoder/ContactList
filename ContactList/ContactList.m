//
//  ContactList.m
//  ContactList
//
//  Created by Anthony Tulai on 2016-01-12.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(id)init {
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [self.contactList addObject:newContact];
}

-(void)printContactList{
    int i = 0;
    for (Contact *contact in self.contactList) {
        NSLog(@"%d: %@ (%@)",i, contact.name, contact.email);
        i++;
    }
}

-(void)findContact:(NSString *)searchParameter {
    
    NSRange replaceRange = [searchParameter rangeOfString:@"find "];
    BOOL found = NO;
    if (replaceRange.location != NSNotFound){
        NSString* truncatedString = [searchParameter stringByReplacingCharactersInRange:replaceRange withString:@""];
        
        for (Contact *contact in self.contactList) {
            if ([contact.name containsString:truncatedString] || [contact.email containsString:truncatedString]) {
                NSLog(@"Name of Contact: %@",contact.name);
                NSLog(@"Email of Contact: %@",contact.email);
                found = YES;
            }
        }
        if (!found) {
            NSLog(@"Contact not found");
        }
        
    }
}

-(bool)checkForDuplicate:(NSString *)attemptedEmail{
    for (Contact *contact in self.contactList) {
        if ([contact.email isEqual:attemptedEmail]) {
            return NO;
        }
    }
    return YES;
}

@end
