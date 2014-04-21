introduction-for-objective-c
============================

Objective-Cの文法に慣れるためのコード置き場


## 構成
* Hello, Worldと表示されるだけのアプリケーション
* Objective-Cの基本的なクラスや文法に慣れるためのテスト (IntroductionTests.m)
* Objective-Cのクラスやメソッドの宣言、定義などを覚えるためのクラス(UltraObject)とそのテスト(ClassAndMethodTest.m)


## Xcodeの起動を確認
まずは Introduction.xcodeproj を開いてXcodeが起動する事を確認します。
次に左上の三角形(▶︎)を押すとシミュレータが立ち上がるかを確認してください。
次に、コマンド(⌘)+Uでテストを実行してください。たくさんテストがこけると思います。このテストが通るように直して行く事でObjective-Cの基本を学んで行ってもらおうというのがこのリポジトリの趣旨となります。


## Objective-Cの基本的なクラスや文法について (IntroductionTests.m)
IntroductionTests.mを直して全てのテストが通るようにしてください。
テストコード(XCTプレフィックスのついているもの)には手を加えないでください。
XCテストケースの解説の箇所にヒントが書いてあります。
ここで扱う項目は以下になります。

* NSString / NSMutableString
* NSArray / NSMutableArray
* NSDictionary / NSMutableDictionary
* 制御構文
  * ifとBOOL型
  * for文
* nilとNSNull
* NSNumber

whileやswitch-caseなども使えますがここでは飛ばしています。
またカバー出来ていないFoundation.frameworkのクラスもあります。

困った時は、コマンド(⌘) + shift + 0 (ゼロ)でドキュメントのウィンドウが立ち上がります。
調べたいクラスについて検索するとヒントが見つかります。


## Objective-Cのクラス定義やメソッドの実装について
UltraObjectというクラスを作っています。また対応するテストとしてClassAndMethodTest.m というテストも作っています。

UltraObject.hに書いたけど実装していないメソッドがあります。そのメソッドを実装してテストが通るようにしてください。





