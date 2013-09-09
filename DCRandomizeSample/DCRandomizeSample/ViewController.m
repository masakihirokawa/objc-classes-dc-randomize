//
//  ViewController.m
//  DCRandomizeSample
//
//  Created by 廣川政樹 on 2013/09/06.
//  Copyright (c) 2013年 Masaki Hirokawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSMutableArray *array;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //シャッフルする配列を生成
    _array = [[NSMutableArray alloc] initWithArray:SHUFFLE_LIST;

    //ログ出力タイマー発行
    [DCTimer setTimer:TIMER_INTERVAL delegate:self selector:@selector(logOutput:) userInfo:nil];
}

//ログ出力タイマーイベント
- (void)logOutput:(NSTimer *)timer
{
    NSLog(@"-----------------------------------------------------");
    
    //配列をシャッフルしてログ出力
    NSLog(@"DCRandomize.shuffleArray: %@", [DCRandomize shuffleArray:_array]);
    
    //指定した範囲内の数値をシャッフルしてログ出力
    NSLog(@"DCRandomize.shuffle: %@", [DCRandomize shuffle:MIN_ID max:MAX_ID]);
    
    //指定したIDと異なる乱数をログ出力 (exceptId以外の数値を出力)
    NSLog(@"DCRandomize.exact: %d", [DCRandomize exact:MIN_ID max:MAX_ID exceptId:EXCEPT_ID]);
    
    //指定した範囲内の乱数をログ出力
    NSLog(@"DCRandomize.range: %d", [DCRandomize range:MIN_ID max:MAX_ID]);
    
    NSLog(@"-----------------------------------------------------");
}

@end
