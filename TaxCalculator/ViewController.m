//
//  ViewController.m
//  TaxCalculator
//
//  Created by Micah Lanier on 1/17/15.
//  Copyright (c) 2015 Micah Lanier Design and Illustration. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;


@property double caTAX;
@property double chiTax;
@property double nyTax;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTAX = .075;
    self.chiTax = .0925;
    self.nyTax = .045;
    
    //self.segmentedControl.tintColor = [UIColor colorWithHue:.42 saturation:.8 brightness:.8 alpha:1.0];
    
    
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    
    NSString *enteredText = self.priceTextField.text;
    double enteredValue = enteredText.intValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = enteredValue * self.caTAX;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    
    if (self.segmentedControl.selectedSegmentIndex == 1) {
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    
    if (self.segmentedControl.selectedSegmentIndex == 2) {
        double result = enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    
}


@end
