//
//  ViewController.m
//  VisualAddressBook
//
//  Created by Dayside_Sam on 2020/07/16.
//  Copyright © 2020 Dayside_Sam. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "BookManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    //
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Book *book1 = [[Book alloc]init];
    book1.name = @"햄릿";
    book1.genre = @"비극";
    book1.author = @"셰익스피어";
    
    //        [book1 bookPrint];
    
    Book *book2 = [[Book alloc]init];
    book2.name = @"누구를 위하여 종을 울리나";
    book2.genre = @"전쟁소설";
    book2.author = @"해밍웨이";
    
    //        [book2 bookPrint];
    
    Book *book3 = [[Book alloc]init];
    book3.name = @"죄와 벌";
    book3.genre = @"사실주의";
    book3.author = @"톨스토이";
    
    //        [book3 bookPrint];
    
    myBook = [[BookManager alloc]init];
    [myBook addBook:book1];
    [myBook addBook:book2];
    [myBook addBook:book3];
    
    _bookCountLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
}

-(IBAction) showAllBookAction: (id)sender {
    NSString *result = [myBook showAllBook];
        
    if (result != nil) {
        _resultTextView.text = result;
    } else {
        _resultTextView.text = @"sorry we dont have book";
    }
}

-(IBAction) registerBookAction: (id)sender {
    Book *bookTemp = [[Book alloc]init];
    bookTemp.name = _bookNameTextField.text;
    bookTemp.genre = _bookGenreTextField.text;
    bookTemp.author = _bookAuthorTextField.text;
    
    [myBook addBook:bookTemp];
    _resultTextView.text = @"add book success";
    
    _bookCountLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
}

-(IBAction) searchBookAction: (id)sender {
    NSString *result = [myBook findBook: _bookNameTextField.text];
    
    if (result != nil) {
        _resultTextView.text = result;
    } else {
        _resultTextView.text = @"sorry we cant find book";
    }
}

-(IBAction) removeBookAction: (id)sender {
    NSString *result = [myBook removeBook:_bookNameTextField.text];
    
    if (result != nil) {
        _resultTextView.text = result;
        _bookCountLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
    } else {
        _resultTextView.text = @"sorry we dont have book";
    }
}




@end
