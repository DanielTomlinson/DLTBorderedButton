//  Created by Danielle Lancashire on 03/10/2013.
//  Copyright (c) 2013 Danielle Lancashire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+DANAdditions.h"

@interface DLTBorderedButton : UIButton

/// The color of the border when not selected defaults to UIColor.greenColor
@property (nonatomic, strong) UIColor *borderColor;

/// The color of the border when selected defaults to UIColor.greenColor
@property (nonatomic, strong) UIColor *selectedBorderColor;

/// The background fill color when not selected defaults to UIColor.clearColor
@property (nonatomic, strong) UIColor *fillColor;

/// The background fill color when selected, defaults to UIColor.clearColor
@property (nonatomic, strong) UIColor *selectedFillColor;

/// The corner radius of the button, defaults to 4.0
@property (nonatomic, assign) CGFloat cornerRadius;


@end
