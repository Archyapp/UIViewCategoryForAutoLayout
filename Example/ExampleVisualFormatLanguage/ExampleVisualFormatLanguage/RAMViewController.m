//
//  RAMViewController.m
//  ExampleVisualFormatLanguage
//
//  Created by Rafael Aguilar Martín on 04/10/13.
//  Copyright (c) 2013 Rafael Aguilar Martín. All rights reserved.
//

#import "RAMViewController.h"
#import "UIView+archy.h"

@interface RAMViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIView *colorView;
@property (nonatomic, readonly) NSDictionary *autolayoutDictionary;

@end

@implementation RAMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self setupLabel];
    [self setupImageView];
    [self setupColorView];
    
    [self setupConstraints];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Custom Getter
- (NSDictionary *)autolayoutDictionary
{
    return @{@"sizeLabel": @44,
             @"separation": @20,
             @"sizeColorView": @50};
}

#pragma mark - Setup
- (void)setupLabel
{
    self.label = [UILabel newAutolayoutView];
    self.label.text = @"This is a demo";
    
    [self.view addSubview:self.label];
}

- (void)setupImageView
{
    self.imageView = [UIImageView newAutolayoutView];
    self.imageView.image = [UIImage imageNamed:@"Archy"];
    
    [self.view addSubview:self.imageView];
}

- (void)setupColorView
{
    self.colorView = [UIView newAutolayoutView];
    self.colorView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:self.colorView];
}

#pragma mark Constraints
- (void)setupConstraints
{
    // Constraints:
    //
    // Label: Top of the superview with 20 separation and 44 height
    // ImageView: Center of superview (x,y)
    // ColorView: Bottom of superview with 20 separation and 50x50
    
    NSDictionary *views = NSDictionaryOfVariableBindings(_label,_imageView, _colorView);
    NSArray *constraints = @[@"V:|-separation-[_label(sizeLabel)]",
                             @"[_colorView(sizeColorView)]",
                             @"V:[_colorView(sizeColorView)]-separation-|"];
    
    // Apply constraints
    [self.view applyLayoutConstraintWithVisualFormat:constraints views:views options:0 metrics:self.autolayoutDictionary];
    
    // Center X
    [self.view applyLayoutConstraintAlignAllCenterXToElements:views];
    
    // Center Y
    [self.view applyLayoutConstraintAlignAllCenterYView:_imageView];
}

@end
