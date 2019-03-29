//
//  FlipViewController.h
//  FlipTabDemo
//
//  Created by 郑辉 on 2019/3/18.
//  Copyright © 2019 郑辉. All rights reserved.
//

#ifndef FlipViewController_h
#define FlipViewController_h


#endif /* FlipViewController_h */

#import <UIKit/UIKit.h>

@interface FlipViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *front;
@property (strong, nonatomic) IBOutlet UIView *back;

- (IBAction)flip2Back:(id)sender;
- (IBAction)flip2Front:(id)sender;

@end
