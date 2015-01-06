//
//  UltraObjectAnswer.h
//  Introduction
//
//  Created by yuichi.takeda on 1/6/15.
//  Copyright (c) 2015 mixi, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UltraObjectAnswer : NSObject

// プロパティ(インスタンス変数の定義)
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger ultra;

// クラスメソッドの宣言
+ (void)myClassMethod;

// インスタンスメソッドの宣言
- (void)myInstanceMethod;


- (NSString *)ultraString;
- (void)doubleUltra;


// イニシャライザを独自定義する時はinitWith...とするのが習わし
- (instancetype)initWithName:(NSString *)str ultra:(NSInteger)ultra;

@end
