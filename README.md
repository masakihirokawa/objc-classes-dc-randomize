DCRandomize
=========================

Objective-Cで乱数の生成や配列のシャッフルを行う「DCRandomize」クラスです。

主な機能は下記の4つです。

##主な機能

1. 配列をシャッフルして取得
2. 指定した範囲内の数値をシャッフルして配列取得
3. 指定した数値と異なる乱数を取得
4. 指定した範囲内の乱数を取得

##使用方法

###配列をシャッフルして取得

```objective-c
NSMutableArray *array = [[NSMutableArray alloc] initWithArray:@[@1, @2, @3, @4, @5, @6, @7, @8, @9, @10]];
[DCRandomize shuffleArray:array];
```

###1〜10の数値をシャッフルして配列取得

```objective-c
[DCRandomize shuffle:1 max:10];
```

###5〜10の範囲で 9以外の乱数を取得

```objective-c
[DCRandomize exact:5 max:10 exceptId:9];
```

###5〜10の範囲の乱数を取得

```objective-c
[DCRandomize range:5 max:10];
```
