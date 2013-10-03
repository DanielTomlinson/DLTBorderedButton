//  Created by Daniel Tomlinson on 03/10/2013.
//  Copyright (c) 2013 Daniel Tomlinson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+DANAdditions.h"

@interface DLTBorderedButton : UIButton

/// The color of the border when not selected defaults to UIColor.greenColor
@property (nonatomic, assign) UIColor *borderColor;

/// The color of the border when selected defaults to UIColor.greenColor
@property (nonatomic, assign) UIColor *selectedBorderColor;

/// The background fill color when not selected defaults to UIColor.clearColor
@property (nonatomic, assign) UIColor *fillColor;

/// The background fill color when selected, defaults to UIColor.clearColor
@property (nonatomic, assign) UIColor *selectedFillColor;

/// The corner radius of the button, defaults to 4.0
@property (nonatomic, assign) CGFloat cornerRadius;


@end
