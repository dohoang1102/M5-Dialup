//
//  ToggleImageControl.m
//  Dialer
//
//  Created by William Richardson on 2/17/12.
//  Copyright (c) 2012 CodeSpan Technologies. All rights reserved.
//

#import "ToggleImageControl.h"

@implementation ToggleImageControl

- (id)initWithFrame:(CGRect)frame 
{
    if ( self = [super initWithFrame: frame] ){
        _normalImage = [UIImage imageNamed: @"box"];
        _selectedImage = [UIImage imageNamed: @"WithCheckMark"];
        CGRect frame = CGRectMake(5.0, 0.0, 35.0, 35.0);
        _imageView = [[UIImageView alloc] initWithImage: _normalImage];
        _imageView.frame = frame;
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        // set imageView frame
        [self addSubview: _imageView];
        
        [self addTarget: self action: @selector(toggleImage) forControlEvents: UIControlEventTouchDown];
    }
    
    return self;
}

- (void) toggleImage
{
    _selected = !_selected;
    _imageView.image = (_selected ? _selectedImage : _normalImage); 
    
    // Use NSNotification or other method to notify data model about state change.
    // Notification example:
    NSDictionary *dict = [NSDictionary dictionaryWithObject: [NSNumber numberWithInt: self.tag] forKey: @"CellCheckToggled"];
    [[NSNotificationCenter defaultCenter] postNotificationName: @"CellCheckToggled" object: self userInfo: dict];
                          
}
                          
@end