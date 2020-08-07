//
//  Book.h
//  BookManager
//
//  Created by Dayside_Sam on 2020/07/14.
//  Copyright © 2020 Dayside_Sam. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

//이름, 장르, 저자 받을것.
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *genre;
@property (nonatomic, strong) NSString *author;

// 책 정보 출력 메서드
-(void)bookPrint;
@end

NS_ASSUME_NONNULL_END
