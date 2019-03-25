//
//  RootViewController.h
//  FlipTabDemo
//
//  Created by 郑辉 on 2019/3/18.
//  Copyright © 2019 郑辉. All rights reserved.
//

#ifndef RootViewController_h
#define RootViewController_h


#endif /* RootViewController_h */

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController {
    int buttonPressCount;
}

@property (strong, nonatomic) IBOutlet UIView *sectionView;
@property (strong, nonatomic) IBOutlet UIView *colorView;
@property (strong, nonatomic) IBOutlet UIView *progressView;
@property (strong, nonatomic) IBOutlet UIView *displayColor;
@property (strong, nonatomic) IBOutlet UIView *stackView;

@property (strong, nonatomic) IBOutlet UIButton *pressBtn;
@property (strong, nonatomic) IBOutlet UILabel *pressLabel;
@property (strong, nonatomic) IBOutlet UILabel *echoLabel;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (strong, nonatomic) IBOutlet UISlider *redSlider;
@property (strong, nonatomic) IBOutlet UISlider *greenSlider;
@property (strong, nonatomic) IBOutlet UISlider *blueSlider;

@property (strong, nonatomic) IBOutlet UILabel *fillLabel;
@property (strong, nonatomic) IBOutlet UIProgressView *progressIndicator;
@property (strong, nonatomic) IBOutlet UIStepper *stepper;

- (IBAction)setctionChange:(id)sender;
- (IBAction)colorSliderChanged:(id)sender;
- (IBAction)buttonPress:(id)sender;
- (IBAction)textChanged:(id)sender;
- (IBAction)dismissKeyboard:(id)sender;
- (IBAction)fillAmount:(id)sender;

@end
