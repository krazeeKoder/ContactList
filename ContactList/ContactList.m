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

@end
