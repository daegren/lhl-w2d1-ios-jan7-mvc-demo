//
//  ViewController.m
//  w2d1-mvc-demo
//
//  Created by David Mills on 2019-01-14.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "ViewController.h"
#import "Counter.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *counterLabel;

@property (strong, nonatomic) Counter * counter;

@property (strong, nonatomic) UIView *redBox;
@property (strong, nonatomic) UIView *blueBox;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.

  self.counter = [[Counter alloc] initWithStep:2];

  self.redBox = [[UIView alloc] initWithFrame:CGRectMake(40, 40, 200, 200)];
  self.redBox.backgroundColor = [UIColor redColor];
  self.redBox.clipsToBounds = YES;
  [self.view addSubview:self.redBox];

  self.blueBox = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
  self.blueBox.backgroundColor = [UIColor blueColor];
  [self.redBox addSubview:self.blueBox];
}

- (IBAction)plusTapped:(id)sender {
  [self.counter increment];
  [self updateLabel];
}

- (IBAction)minusTapped:(id)sender {
  [self.counter decrement];
  [self updateLabel];
}

- (void)updateLabel {
  self.counterLabel.text = [NSString stringWithFormat:@"%i", self.counter.value];
}

@end
