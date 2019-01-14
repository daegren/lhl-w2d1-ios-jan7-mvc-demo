//
//  Counter.h
//  w2d1-mvc-demo
//
//  Created by David Mills on 2019-01-14.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Counter : NSObject

@property (assign, nonatomic, readonly) int value;

- (instancetype)initWithStep:(int)stepValue;

- (void)increment;
- (void)decrement;

@end

NS_ASSUME_NONNULL_END
