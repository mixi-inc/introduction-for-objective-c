//
//  UltraObject.m
//  Introduction
//
//  Created by yuichi.takeda on 4/21/14.
//  Copyright (c) 2014 mixi, Inc. All rights reserved.
//

#import "UltraObject.h"

@implementation UltraObject

- (instancetype)init {

    self = [super init];
    if (self) {
        // ここに初期化の処理を書くのが習わし
    }
    return self;
}

- (instancetype)initWithName:(NSString *)str ultra:(NSInteger)ultra {
    self = [self init];
    if (self) {

        _name = str;
        _ultra = ultra;

    }
    return self;
}

- (NSString *)ultraString {
    return [NSString stringWithFormat:@"Ultra-%@-%d", self.name, self.ultra];
}

- (void)doubleUltra {
    self.ultra *= 2;
}

@end
