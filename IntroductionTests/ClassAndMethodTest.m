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
    UltraObject *ultraObj = [[UltraObject alloc] initWithName:@"seven" ultra:7];
    XCTAssertTrue([ultraObj.name isEqualToString:@"seven"], @"");
    XCTAssertEqual(ultraObj.ultra, 7, @"");
}

- (void)testUltraString
{
    UltraObject *ultraObj = [[UltraObject alloc] initWithName:@"seven" ultra:7];
    XCTAssertTrue([[ultraObj ultraString] isEqualToString:@"Ultra-seven-7"], @"");
}

- (void)testDoubleUltra
{
    UltraObject *ultraObj = [[UltraObject alloc] initWithName:@"seven" ultra:7];
    XCTAssertEqual(ultraObj.ultra, 7, @"");
    [ultraObj doubleUltra];
    XCTAssertEqual(ultraObj.ultra, 14, @"");

}

@end
