//
//  MovieListCell.h
//  MusicPlayer
//
//  Created by lanou3g on 15/6/10.
//  Copyright (c) 2015年 安晨硕. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieListCell : UICollectionViewCell
@property(nonatomic,strong)UILabel * titleLabel;
@property(nonatomic,strong)UIImageView * movieImg;
@property(nonatomic,strong)UILabel * update;
@property(nonatomic,assign)int updateNum;
@end
