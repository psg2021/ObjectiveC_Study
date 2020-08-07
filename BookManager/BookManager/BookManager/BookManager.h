//
//  BookManager.h
//  BookManager
//
//  Created by Dayside_Sam on 2020/07/14.
//  Copyright © 2020 Dayside_Sam. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Book;
@interface BookManager : NSObject{
    // getter, setter 안쓸거기 때문에 property 안쓴다.
    NSMutableArray *bookList;
}

// 책을 추가하는 메서드
-(void)addBook:(Book *)bookObject;

// 전체 책의 리스트
-(NSString *)showAllBook;

// 등록된 책의  갯수
-(NSUInteger)countBook;

// 책 검색
-(NSString *)findBook:(NSString *)name;

// 책 지우기
-(NSString *)removeBook:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
