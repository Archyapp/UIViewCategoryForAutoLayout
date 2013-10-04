UIViewCategoryForAutoLayout
===========================

A simple UIView Category for implement constraint with [VFL(Visual Format Language)](https://developer.apple.com/library/mac/documentation/userexperience/conceptual/AutolayoutPG/Articles/formatLanguage.html).

Setup Instructions
------------------

Add `UIView+archy.h` & `UIView+archy.m` to your project.

Example
-------

	// Constraints:
    //
    // Label: Top of the superview with 20 separation and 44 height
    
	NSDictionary *views = NSDictionaryOfVariableBindings(_label);
    NSArray *constraints = @[@"V:|-20-[_label(44)]"];
    
    // Apply constraints
    [self.view applyLayoutConstraintWithVisualFormat:constraints views:views];
    
See the demo project for more complex code.

MIT License
-----------

    Copyright (c) 2013 Archy. All rights reserved.

    Permission is hereby granted, free of charge, to any person obtaining a
    copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:

    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
