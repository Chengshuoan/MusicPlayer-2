//
//  MovieListCell.m
//  MusicPlayer
//
//  Created by lanou3g on 15/6/10.
//  Copyright (c) 2015年 安晨硕. All rights reserved.
//

#import "MovieListCell.h"

@implementation MovieListCell
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.movieImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 80, 80)];
        self.movieImg.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.movieImg];
        
        self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 80, 80, 20)];
        self.titleLabel.backgroundColor = [UIColor yellowColor];
        [self.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [self.contentView addSubview:self.titleLabel];
        
    }
    return self;
}
@end
