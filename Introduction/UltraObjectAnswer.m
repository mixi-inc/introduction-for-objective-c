//
//  UltraObjectAnswer.m
//  Introduction
//
//  Created by yuichi.takeda on 1/6/15.
//  Copyright (c) 2015 mixi, Inc. All rights reserved.
//

#import "UltraObjectAnswer.h"

@implementation UltraObjectAnswer

- (instancetype)init {

    self = [super init];
    if (self) {
        // ここに初期化の処理を書くのが習わし
    }
    return self;
}

- (instancetype)initWithName:(NSString *)str ultra:(NSInteger)ultra
{
    self = [self init];
    if (self) {
        _name = str;
        _ultra = ultra;
    }
    return self;
}

- (NSString *)ultraString
{
    return [NSString stringWithFormat:@"Ultra-%@-%ld", self.name, self.ultra];
}

- (void)doubleUltra
{
    self.ultra *= 2;
}

@end
