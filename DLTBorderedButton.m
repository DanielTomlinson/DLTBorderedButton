//  Created by Danielle Lancashire on 03/10/2013.
//  Copyright (c) 2013 Danielle Lancashire. All rights reserved.
//

#import "DLTBorderedButton.h"

@implementation DLTBorderedButton

- (id)initWithFrame:(CGRect)frame {
	
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self prepare];
    }
    return self;
}

- (id)initWithCoder:(CGRect)aDecoder {
	
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Initialization code
        [self prepare];
    }
    return self;
}

- (void) prepare {
    self.borderColor            = [UIColor colorFromHexString:@"00BB44"];
    self.selectedBorderColor    = [self.borderColor darken:28];
        
    self.fillColor              = UIColor.clearColor;
    self.selectedFillColor      = [self.fillColor darken:28];
        
        
    UIColor *textColor = self.borderColor;
    UIColor *selectedTextColor = self.selectedBorderColor;
        
    if (self.fillColor != UIColor.clearColor) {
        textColor = UIColor.whiteColor;
    }
        
    if (self.selectedFillColor != UIColor.clearColor) {
        selectedTextColor = [self.selectedFillColor invert];
    }
        
    [self setTitleColor:textColor forState:UIControlStateNormal];
    [self setTitleColor:self.selectedBorderColor forState:UIControlStateHighlighted];
      
    self.cornerRadius = 4.0f;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect bounds = self.bounds;
    
    CGRect db = CGRectInset(bounds, 1, 1);
    
    [self.borderColor setStroke];
    [self.fillColor setFill];
    
    if (self.state == UIControlStateHighlighted) {
        [self.selectedBorderColor setStroke];
        [self.selectedFillColor setFill];
    }
    
    CGPathRef path = [self newPathForRoundedRect:db radius:4.0f];
    CGContextAddPath(context, path);
    
    CGContextFillPath(context);
    
    
    
    path = [self newPathForRoundedRect:db radius:self.cornerRadius];
    CGContextAddPath(context, path);

    CGContextSetLineWidth(context, 1.0);
    CGContextStrokePath(context);
    
//    CGContextStrokePath(context)
}

-(void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    [self setNeedsDisplay];
}

- (CGPathRef) newPathForRoundedRect:(CGRect)rect radius:(CGFloat)radius {
	CGMutablePathRef retPath = CGPathCreateMutable();
    
	CGRect innerRect = CGRectInset(rect, radius, radius);
    
	CGFloat inside_right = innerRect.origin.x + innerRect.size.width;
	CGFloat outside_right = rect.origin.x + rect.size.width;
	CGFloat inside_bottom = innerRect.origin.y + innerRect.size.height;
	CGFloat outside_bottom = rect.origin.y + rect.size.height;
    
	CGFloat inside_top = innerRect.origin.y;
	CGFloat outside_top = rect.origin.y;
	CGFloat outside_left = rect.origin.x;
    
	CGPathMoveToPoint(retPath, NULL, innerRect.origin.x, outside_top);
    
	CGPathAddLineToPoint(retPath, NULL, inside_right, outside_top);
	CGPathAddArcToPoint(retPath, NULL, outside_right, outside_top, outside_right, inside_top, radius);
	CGPathAddLineToPoint(retPath, NULL, outside_right, inside_bottom);
	CGPathAddArcToPoint(retPath, NULL,  outside_right, outside_bottom, inside_right, outside_bottom, radius);
    
	CGPathAddLineToPoint(retPath, NULL, innerRect.origin.x, outside_bottom);
	CGPathAddArcToPoint(retPath, NULL,  outside_left, outside_bottom, outside_left, inside_bottom, radius);
	CGPathAddLineToPoint(retPath, NULL, outside_left, inside_top);
	CGPathAddArcToPoint(retPath, NULL,  outside_left, outside_top, innerRect.origin.x, outside_top, radius);
    
	CGPathCloseSubpath(retPath);
    
	return retPath;
}


@end
