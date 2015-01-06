//
//  ViewController.m
//  AgeOfLaika
//
//  Created by jim Veneskey on 1/2/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertButtonPressed:(UIButton *)sender {
    
    // When this button is pressed, we need to take the text from 'enterHumanYears'
    // apply the conversion routine to it - and then update the text box with the answer
    // Years 1 & 2 are equivalent to 10.5
    // Years 3 +  are equivalent to 4.5
    float dogYears = 0.0;
    float inHumanYears = [self.enterHumanYears.text floatValue];
    // cumbersome way of handling the first two years
    if (inHumanYears > 2) {
        dogYears = (10.5 * 2) + ((inHumanYears -2)*4.5);
    } else {
        dogYears = (10.5 * inHumanYears);
    }
    
    self.labelInDogYears.text = [NSString stringWithFormat:@"%.2f Dog Years", dogYears];
    [self.enterHumanYears resignFirstResponder];

    
}
@end
