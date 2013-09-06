//
//  DCRandomize.m
//
//  Created by Masaki Hirokawa on 2013/09/06.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import "DCRandomize.h"

@implementation DCRandomize

static NSMutableArray *shuffleList;
static NSInteger      shuffleNum;
static NSMutableArray *tmpList;
static NSInteger      tmpId;

#pragma mark shuffle array

//配列をシャッフルして取得
+ (NSArray *)shuffleArray:(NSArray *)array
{
    DCRandomize.shuffleList = [array copy];
    DCRandomize.shuffleNum = [DCRandomize.shuffleList count];
    while (DCRandomize.shuffleNum) {
        NSUInteger m = floor(rand() % DCRandomize.shuffleNum);
        id n = [DCRandomize.shuffleList objectAtIndex:--DCRandomize.shuffleNum];
        [DCRandomize.shuffleList replaceObjectAtIndex:DCRandomize.shuffleNum
                                           withObject:[DCRandomize.shuffleList objectAtIndex:m]];
        [DCRandomize.shuffleList replaceObjectAtIndex:m withObject:n];
    }
    return DCRandomize.shuffleList;
}

#pragma mark shuffle

//指定した範囲内の数値をシャッフルして配列取得



#pragma mark exact

//指定したIDと異なる乱数を取得



#pragma mark

//指定した範囲内の乱数を取得



#pragma mark setter/getter method

+ (void)setShuffleList:(NSMutableArray *)array
{
    shuffleList = array;
}

+ (NSMutableArray *)shuffleList
{
    return shuffleList;
}

+ (void)setShuffleNum:(NSInteger)num
{
    shuffleNum = num;
}

+ (NSInteger)shuffleNum
{
    return shuffleNum;
}

+ (void)setTmpList:(NSMutableArray *)array
{
    tmpList = array;
}

+ (NSMutableArray *)tmpList
{
    return tmpList;
}

+ (void)setTmpId:(NSInteger)id
{
    tmpId = id;
}

+ (NSInteger)tmpId
{
    return tmpId;
}

@end
