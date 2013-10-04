//
//  UIView+archy.h
//  Archy
//
//  Created by Rafael Aguilar Martín on 21/06/13.
//  Copyright (c) 2013 Archy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (archy)

#pragma mark - Autolayout
+ (id)newAutolayoutView;
- (void)applyLayoutConstraintWithVisualFormat:(NSArray *)arrayVisualFormat views:(NSDictionary *)autolayoutViews;
- (void)applyLayoutConstraintWithVisualFormat:(NSArray *)arrayVisualFormat views:(NSDictionary *)autolayoutViews options:(NSLayoutFormatOptions)options metrics:(NSDictionary *)metrics;

#pragma mark Center
- (void)applyLayoutConstraintAlignAllCenterXView:(UIView *)view;
- (void)applyLayoutConstraintAlignAllCenterYView:(UIView *)view;
- (void)applyLayoutConstraintAlignAllCenterXToElements:(NSDictionary *)elements;
- (void)applyLayoutConstraintAlignAllCenterYToElements:(NSDictionary *)elements;

@end
