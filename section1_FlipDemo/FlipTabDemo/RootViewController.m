    //
//  RootViewController.m
//  FlipTabDemo
//
//  Created by 郑辉 on 2019/3/18.
//  Copyright © 2019 郑辉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RootViewController.h"

@implementation RootViewController

@synthesize sectionView = _sectionView;
@synthesize colorView = _colorView;
@synthesize progressView = _progressView;

@synthesize displayColor = _displayColor;
@synthesize redSlider = _redSlider;
@synthesize greenSlider;
@synthesize blueSlider;

@synthesize pressLabel;
@synthesize echoLabel;

@synthesize segmentControl = _segmentControl;

@synthesize fillLabel;
@synthesize stepper;
@synthesize progressIndicator;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.sectionView addSubview:_colorView];
    [self.displayColor setAlpha:0.5f];
    [self resetColor];
}

- (void)viewDidUnload {
    [self setSectionView:nil];
    [self setColorView:nil];
    [self setProgressView:nil];
}

- (void)setctionChange:(id)sender {
    NSLog(@"section changed");
    UISegmentedControl *segControl = (UISegmentedControl *)sender;
    if (segControl.selectedSegmentIndex == 0) {
        [self.sectionView addSubview:self.colorView];
    } else {
        [self.sectionView addSubview:self.progressView];
    }
}

- (void)colorSliderChanged:(id)sender {
    NSLog(@"color has changed");
    [self resetColor];
}

- (void)resetColor {
    float red = self.redSlider.value;
    float blue = self.blueSlider.value;
    float green = self.greenSlider.value;
    
    UIColor *background = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    [self.displayColor setBackgroundColor:background];
}

- (void)buttonPress:(id)sender {
    buttonPressCount ++;
    NSString *display = [[NSString alloc] initWithFormat:@"%d times", buttonPressCount];
    pressLabel.text = display;
    NSLog(@"button press");
}

- (void)textChanged:(id)sender {
    UITextField *textField = (UITextField *)sender;
    NSString *text = textField.text;
    echoLabel.text = text;
    NSLog(@"text field changed");
}

- (void)dismissKeyboard:(id)sender {
    [(UITextField *)sender resignFirstResponder];
}

- (void)fillAmount:(id)sender {
    NSInteger value = (NSInteger)self.stepper.value;
    [self.progressIndicator setProgress:((float) value / 100.0)];
}

@end

