//
//  UIColor+DANAdditions.h
//  Vidskiptabladid
//
//  Created by  Danielle Lancashireon 26/08/2013.
//  Copyright (c) 2013 Danielle Lancashire. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (DANAdditions)

+ (UIColor *) colorFromHexString:(NSString *)hexString;

- (UIColor *)lighten:(float)amount;
- (UIColor *)darken:(float)amount;

- (UIColor *)saturate:(float)amount;
- (UIColor *)desaturate:(float)amount;

- (UIColor *)invert;
- (UIColor *)greyscale;

@end
