//
//  ViewController.h
//  VisualAddressBook
//
//  Created by Dayside_Sam on 2020/07/16.
//  Copyright © 2020 Dayside_Sam. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BookManager;
@interface ViewController : UIViewController{
    BookManager *myBook;
}

@property (nonatomic, strong) IBOutlet UILabel *bookCountLabel;

@property (nonatomic, strong) IBOutlet UITextField *bookNameTextField;
@property (nonatomic, strong) IBOutlet UITextField *bookGenreTextField;
@property (nonatomic, strong) IBOutlet UITextField *bookAuthorTextField;

@property (nonatomic, strong) IBOutlet UITextView *resultTextView;

-(IBAction) showAllBookAction: (id)sender;
-(IBAction) registerBookAction: (id)sender;
-(IBAction) searchBookAction: (id)sender;
-(IBAction) removeBookAction: (id)sender;


@end

