//
//  UIView+archy.m
//  Archy
//
//  Created by Rafael Aguilar Martín on 21/06/13.
//  Copyright (c) 2013 Archy. All rights reserved.
//

#import "UIView+archy.h"

@implementation UIView (archy)

#pragma mark - Autolayout
+ (id)newAutolayoutView
{
    UIView *view = [self new];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    
    return view;
}

- (void)applyLayoutConstraintWithVisualFormat:(NSArray *)arrayVisualFormat views:(NSDictionary *)autolayoutViews
{
    for (NSString *stringConstraints in arrayVisualFormat) {
        [self addVisualFormatConstraints:stringConstraints views:autolayoutViews];
    }
}

- (void)applyLayoutConstraintWithVisualFormat:(NSArray *)arrayVisualFormat views:(NSDictionary *)autolayoutViews options:(NSLayoutFormatOptions)options metrics:(NSDictionary *)metrics
{
    for (NSString *stringConstraints in arrayVisualFormat) {
        [self addVisualFormatConstraints:stringConstraints views:autolayoutViews options:options metrics:metrics];
    }
}

- (void)addVisualFormatConstraints:(NSString *)visualFormatString views:(NSDictionary *)autolayoutViews
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:visualFormatString
                                                                   options:0
                                                                   metrics:nil
                                                                     views:autolayoutViews];
    
    [self addConstraints:constraints];
}

- (void)addVisualFormatConstraints:(NSString *)visualFormatString views:(NSDictionary *)autolayoutViews options:(NSLayoutFormatOptions)options metrics:(NSDictionary *)metrics
{
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:visualFormatString
                                                                   options:options
                                                                   metrics:metrics
                                                                     views:autolayoutViews];
    
    [self addConstraints:constraints];
}

#pragma mark Center
- (void)applyLayoutConstraintAlignAllCenterXView:(UIView *)view
{
    [self addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1.0f
                                                      constant:0.0f]];
}

- (void)applyLayoutConstraintAlignAllCenterYView:(UIView *)view
{
    [self addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                     attribute:NSLayoutAttributeCenterY
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1.0f
                                                      constant:0.0f]];
}

- (void)applyLayoutConstraintAlignAllCenterYToElements:(NSDictionary *)elements
{
    [elements enumerateKeysAndObjectsUsingBlock:^(NSString *key, id obj, BOOL *stop) {
        [self applyLayoutConstraintAlignAllCenterYView:obj];
    }];
}

- (void)applyLayoutConstraintAlignAllCenterXToElements:(NSDictionary *)elements
{
    [elements enumerateKeysAndObjectsUsingBlock:^(NSString *key, id obj, BOOL *stop) {
        [self applyLayoutConstraintAlignAllCenterXView:obj];
    }];
}

@end
