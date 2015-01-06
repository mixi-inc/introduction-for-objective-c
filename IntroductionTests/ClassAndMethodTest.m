//
//  ClassAndMethodTest.m
//  Introduction
//
//  Created by yuichi.takeda on 4/21/14.
//  Copyright (c) 2014 mixi, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UltraObject.h"

@interface ClassAndMethodTest : XCTestCase

@end

@implementation ClassAndMethodTest

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testInitialize
{
    // 問題
    // UltraObject.m にはメソッド initWithName:ultra: が実装されていないので実装してください
    // この時、引数として渡されたnameとultraがそれぞれプロパティnameとultraにセットされるようにして下さい
    UltraObject *ultraObj = [[UltraObject alloc] initWithName:@"seven" ultra:7];
    XCTAssertTrue([ultraObj.name isEqualToString:@"seven"], @"");
    XCTAssertEqual(ultraObj.ultra, 7, @"");
}

- (void)testUltraString
{
    UltraObject *ultraObj = [[UltraObject alloc] initWithName:@"seven" ultra:7];

    // 問題
    // UltraObject.m にはメソッド ultraString が実装されていないので実装して下さい
    // ultraStringはそのインスタンスのプロパティnameとultraを用いて
    // Ultra-name-ultra というNSStringを返すメソッドです
    XCTAssertTrue([[ultraObj ultraString] isEqualToString:@"Ultra-seven-7"], @"ヒント : [NSString stringWithFormat:...] を使う");

    UltraObject *ultraEight = [[UltraObject alloc] initWithName:@"eight" ultra:8];
    XCTAssertTrue([[ultraEight ultraString] isEqualToString:@"Ultra-eight-8"], @"");

}

- (void)testDoubleUltra
{
    UltraObject *ultraObj = [[UltraObject alloc] initWithName:@"seven" ultra:7];

    // 問題
    // UltraObject.m にはメソッド doubleUltra が実装されていないので実装して下さい
    // doubleUltraはインスタンスのプロパティultra を2倍にするメソッドです
    XCTAssertEqual(ultraObj.ultra, 7, @"");
    [ultraObj doubleUltra];
    XCTAssertEqual(ultraObj.ultra, 14, @"");
    [ultraObj doubleUltra];
    XCTAssertEqual(ultraObj.ultra, 28, @"");

}

@end
