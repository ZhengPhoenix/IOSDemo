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

@synthesize front,back;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Flip loaded");
    
    [self.view addSubview:front];
}

- (void)flip2Back:(id)sender {
    NSLog(@"flip to back");
    [UIView transitionFromView:self.front toView:self.back duration:1.0 options:UIViewAnimationOptionTransitionFlipFromRight completion:nil];
}

- (void)flip2Front:(id)sender {
    NSLog(@"flip to fron");
    [UIView transitionFromView:self.back toView:self.front duration:1.0 options:UIViewAnimationOptionTransitionFlipFromLeft completion:nil];
}

@end
