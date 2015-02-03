//
//  IntroductionTests.m
//  IntroductionTests
//
//  Created by yuichi.takeda on 4/21/14.
//  Copyright (c) 2014 mixi, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface IntroductionTests : XCTestCase

@end

@implementation IntroductionTests

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

#pragma mark - NSString
- (void)testCreateNSString
{
    // 問題
    // 変数 str に文字列"Hello, World!!" を代入してください
    NSString *str = @"Hello, World!!";
    XCTAssertTrue([str isEqualToString:@"Hello, World!!"], @"Objective-Cの文字列は@とダブルクォーテーションでくくって作ります。");
    XCTAssertEqual(str.length, 14, @"長さの取得はlengthメソッド");

    // 問題
    // stringWithFormatのフォーマットをテストが通るように整形してください
    NSString *formatted = [NSString stringWithFormat:@"int:%d, float:%f, obj:%@", 10, 30.0, str];
    XCTAssertTrue([formatted isEqualToString:@"int:10, float:30.000000, obj:Hello, World!!"], @"フォーマット指定子も使えます。Objective-Cのオブジェクトは％@で出力できます");

}

- (void)testAppendNSMutableString
{
    // 問題
    // 変数 mutableString に文字列を追加して "Hello, World" となるようにしてください
    NSMutableString *mutableString = [NSMutableString stringWithString:@"Hello, "];
    NSString *string = @"World";
    [mutableString appendString:string];
    XCTAssertTrue([mutableString isEqualToString:@"Hello, World"], @"文字列の結合にはappendStringを使う");
}


#pragma mark - NSArray
- (void)testNSArrayBasics
{
    // 問題
    // 変数 array の 0番目,1番目,2番目 の要素がそれぞれ str1, str2, str3 になるようにしてください
    NSString *str1 = @"1", *str2 = @"2", *str3 = @"3";
    NSArray *array = [NSArray arrayWithObjects:str1, str2, str3, nil];

    XCTAssertEqualObjects(array[0], str1, @"配列は@[..]で作って、アクセスはarray[0]のようにします。");
    XCTAssertEqual(array.count, 3, @"配列のサイズへのアクセスは.countを利用");

    /*
     NSArrayはインスタンス生成後は追加や削除ができないImmutableクラス
     後から変更を加える場合はNSMutableArrayを使う
     */
    NSMutableArray *mutable = [NSMutableArray array];
    XCTAssertEqual(mutable.count, 0, @"最初は0個");

    // 問題
    // 変数 mutable にstr1 を追加してください
    [mutable addObject:str1];
    XCTAssertEqualObjects(mutable[0], str1, @"オブジェクトを追加するにはaddObjectを利用する");

    // 問題
    // 続いて変数 mutable に str2, str3 をまとめて追加してください
    NSArray *arr = [NSArray arrayWithObjects:str2, str3];
    [mutable addObjectsFromArray:arr];
    XCTAssertEqual(mutable.count, 3, @"まとめて追加するときはaddObjectsFromArrayを利用");

    // 問題
    // mutableの最初の変数を削除してください
    [mutable removeObjectAtIndex:0];
    XCTAssertEqualObjects(mutable[1], str3, @"削除するときはremoveObject...なメソッドを利用");

}

#pragma mark - NSDictionary
- (void)testNSDictionaryBasics
{
    // 問題
    // NSDictionary型の変数 dict を キー : @"key" で @"value" が返ってくるように初期化してください
    NSDictionary *dict = @{@"key":@"value"};
    XCTAssertEqualObjects(dict[@"key"], @"value", @"辞書型のNSDictionaryは @{key:value} のように初期化し、dict[key]のようにアクセスします");
    XCTAssertNil(dict[@"foobar"], @"登録していない場合はnilが返ります。");
    XCTAssertTrue([dict.allKeys[0] isEqualToString:@"key"], @"全てのキーはallKeysで取れます。NSArrayが帰ってきます。");
    XCTAssertTrue([dict.allValues[0] isEqualToString:@"value"], @"全ての値はallValuesで取れます。NSArrayが帰ってきます。");


    /*
     NSArrayと同様にNSDictionaryも変更不可能なImmutableなクラスです
     後から変更する場合はNSMutableDictionaryを使います。
     */

    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSString *str = @"I love ruby";

    // 問題
    // mutableDictにキー : @"key"で str が返るようにオブジェクトを追加してください
    mutableDict[@"key"] = str;
    XCTAssertEqualObjects(mutableDict[@"key"], str, @"dict[key] = valueで登録できます。");

    // 問題
    // mutableDictに同じキー @"key"で st2 が返るように上書きしてください
    NSString *str2 = @"I love Objective-C";
    mutableDict[@"key"] = str2;
    XCTAssertEqualObjects(mutableDict[@"key"], str2, @"同じキーで代入すると上書きされます。");

    // 問題
    // mutableDictからキー @"key" で登録されているオブジェクトを削除してください
    [mutableDict removeObjectForKey:@"key"];
    XCTAssertNil(mutableDict[@"key"], @"removeObjectForKeyで削除されます。");

}


#pragma mark control syntax
/*
 制御構文はC言語のものを基本的に使います。
 一部、Obj-Cの拡張もあります。
 */

- (void)testIfAndBOOL
{
    //真偽値ではBOOL型を使う事が一般的です。
    BOOL a = YES;
    if (a == YES) { // 比較は '==' を使います。オブジェクトの比較には isEqual: を使います。
        // ここに来て欲しい
    } else {
        XCTFail(@"ここに来ちゃダメ");
    }


    BOOL b = YES;
    if (!b) { // '!' は反転演算
        XCTFail(@"ここに来ちゃダメ");
    }


    if (nil) {
        // nil は真偽値的には NO になる
    }

}

- (void)testFor
{
    // 問題
    // 以下のfor文を書き換えてcount1が10回インクリメントするようにしてください
    NSInteger count1 = 0;
    for (count1; count1 < 10; count1++) {
        // break;の行を削除して、ここにコードを書く
    }

    XCTAssertEqual(count1, 10, @"Cのfor文をかける");

    // for-in という高速列挙も利用可能でこちらのほうが利用される
    NSArray *array = @[@"a", @"b", @"c"];
    for (NSString *str in array) {
        NSLog(@"%@", str);
    }


    NSMutableArray *mutableArray = [NSMutableArray array];


    // 問題
    // 以下のforを使ってmutableArrayに0から9のNSNumberを追加してみてください
    // NSNumberは @(i) で作ることができます
    for (NSInteger i = 0; i < 10; ++i) {
        [mutableArray addObject:@(i)];
        NSNumber *num = mutableArray[i];
        XCTAssertTrue([num isKindOfClass:[NSNumber class]], @"");
        XCTAssertEqual(num.integerValue, i, @"");
    }


}

#pragma mark - Others
- (void)testNil
{
    NSObject *obj = nil;
    XCTAssertNoThrow([obj description], @"nilなものにメソッドを投げてもヌルポは飛ばない");

    NSNull *null = [NSNull null];
    XCTAssertNotNil(null, @"Nullであることを明示するNSNUllというクラスもあります");

    XCTAssertThrows(@{@"key": obj}, @"NSArrayやNSDictionaryにnilを入れる事はできません");

}

- (void)testNSNumber
{
    /*
     数を表すクラスにNSNumberがあります。プリミティブに対するラップなので使用頻度は少ないです。
     */
    NSNumber *num = @10;
    XCTAssertEqual(num.integerValue, 10, @"");

}

@end
