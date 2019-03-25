//
//  FlipViewController.m
//  FlipTabDemo
//
//  Created by 郑辉 on 2019/3/18.
//  Copyright © 2019 郑辉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlipViewController.h"

@implementation FlipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Flip loaded");
    
    UILabel *text = [[UILabel alloc] initWithFrame:CGRectMake(50, 40, 100, 200)];
    [text setText:@"text"];
    [self.view addSubview:text];
}

@end
