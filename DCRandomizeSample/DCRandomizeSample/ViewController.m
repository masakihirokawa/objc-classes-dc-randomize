//
//  ViewController.m
//  DCRandomizeSample
//
//  Created by 廣川政樹 on 2013/09/06.
//  Copyright (c) 2013年 Masaki Hirokawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray *array;
@property UILabel *shuffleListLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _array = [[NSArray alloc] initWithObjects:[NSNumber numberWithInteger:1], nil];
    
    //
    _shuffleListLabel = [DCLabel planeLabel:CGRectMake(0, 0, LABEL_WIDTH, LABEL_HEIGHT)
                                       text:[NSString stringWithFormat:@"%@", [DCRandomize shuffleArray:_array]]
                                       font:LABEL_FONT textColor:[UIColor whiteColor]
                              textAlignment:NSTextAlignmentCenter backgroundColor:[UIColor blackColor]];
}

@end
