//
//  PBPhotoCell.m
//  Photo Bombes
//
//  Created by Collin Hartigan on 5/14/14.
//  Copyright (c) 2014 Collin Hartigan. All rights reserved.
//

#import "PBPhotoCell.h"

@implementation PBPhotoCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.imageView];
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    self.imageView.frame = self.contentView.bounds;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
