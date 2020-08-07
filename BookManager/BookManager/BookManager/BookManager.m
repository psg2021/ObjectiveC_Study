//
//  BookManager.m
//  BookManager
//
//  Created by Dayside_Sam on 2020/07/14.
//  Copyright © 2020 Dayside_Sam. All rights reserved.
//

#import "BookManager.h"
#import "Book.h"

@implementation BookManager


//MARK:- 초기화
-(id)init{
    self = [super init];
    if(self){
        bookList = [[NSMutableArray alloc]init];
    }
    return self;
}

//MARK:- 동작 메서드
/**
 Book 객체를 bookList에 추가한다.
*/
-(void)addBook:(Book *)bookObject{
    [bookList addObject:bookObject];
}


/**
 bookList에 저장된 모든 Book객체의 값을 출력한다.
 */
-(NSString *)showAllBook{
    NSMutableString *strTemp = [[NSMutableString alloc]init];
    for (Book *bookTemp in bookList) {
        [strTemp appendString:@"Name : "];
        [strTemp appendString:bookTemp.name];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"Genre : "];
        [strTemp appendString:bookTemp.genre];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"Author : "];
        [strTemp appendString:bookTemp.author];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"--------------------------"];
        [strTemp appendString:@"\n"];
    }
    
    return strTemp;
}

/**
 bookList에 저장된 Book객체의 수를 return한다.
 */
-(NSUInteger)countBook{
    return [bookList count];
}

/**
 name 과 일치하는 Book을 bookList내에서 검색한다.
 검색결과가 있을경우 일치하는 책의 정보를 return, 없으면 nil.
 */
-(NSString *)findBook:(NSString *)name{
    NSMutableString *strTemp = [[NSMutableString alloc]init];
    
    for (Book *bookTemp in bookList) {
        if ([bookTemp.name isEqualToString:name]) {
            [strTemp appendString:@"Name : "];
            [strTemp appendString:bookTemp.name];
            [strTemp appendString:@"\n"];
            [strTemp appendString:@"Genre : "];
            [strTemp appendString:bookTemp.genre];
            [strTemp appendString:@"\n"];
            [strTemp appendString:@"Author : "];
            [strTemp appendString:bookTemp.author];
            
            return strTemp;
        }
    }
    return nil;
}

/**
 name 과 일치하는 Book을 bookList내에서 삭제한다.
 검색결과가 있을경우 일치하는 책을 bookList에서 삭제후, name을  return, 없으면 nil.
 */
-(NSString *)removeBook:(NSString *)name{
    NSMutableString *strTemp = [[NSMutableString alloc]init];
    for (Book *bookTemp in bookList) {
        if ([bookTemp.name isEqualToString:name]) {
            [bookList removeObject:bookTemp];
            [strTemp appendString:name];
            [strTemp appendString:@"is removed"];
            return strTemp;
        }
    }
    return nil;
}

@end
