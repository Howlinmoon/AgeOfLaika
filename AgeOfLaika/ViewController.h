//
//  ViewController.h
//  AgeOfLaika
//
//  Created by jim Veneskey on 1/2/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelInDogYears;


@property (weak, nonatomic) IBOutlet UITextField *enterHumanYears;

- (IBAction)convertButtonPressed:(UIButton *)sender;


@end
