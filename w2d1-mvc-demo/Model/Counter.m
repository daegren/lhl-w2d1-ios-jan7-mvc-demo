//
//  Counter.m
//  w2d1-mvc-demo
//
//  Created by David Mills on 2019-01-14.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "Counter.h"

@interface Counter ()

@property (assign, nonatomic) int stepValue;

@end

@implementation Counter

- (instancetype)init {
  if (self = [super init]) {
    _value = 0;
    _stepValue = 1;
  }

  return self;
}

- (instancetype)initWithStep:(int)stepValue {
  if (self = [super init]) {
    _value = 0;
    _stepValue = stepValue;
  }

  return self;
}

- (void)increment {
  _value += self.stepValue;
}

- (void)decrement {
  _value -= self.stepValue;
}

@end
