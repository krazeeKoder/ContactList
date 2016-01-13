//
//  ContactList.h
//  ContactList
//
//  Created by Anthony Tulai on 2016-01-12.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contactList;

-(void)addContact:(Contact *)newContact;

-(void)printContactList;

-(void)findContact:(NSString *)searchParameter;


@end
