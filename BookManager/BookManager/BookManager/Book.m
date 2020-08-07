//
//  Book.m
//  BookManager
//
//  Created by Dayside_Sam on 2020/07/14.
//  Copyright © 2020 Dayside_Sam. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize name;
@synthesize genre;
@synthesize author;

-(void)bookPrint{
    NSLog(@"Name : %@", name);
    NSLog(@"Genre : %@", genre);
    NSLog(@"Author : %@", author);
}

@end
