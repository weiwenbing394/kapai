//
//  MyCollectionViewCell.m
//  uicollectionViewTest
//
//  Created by 大家保 on 2016/10/14.
//  Copyright © 2016年 大家保. All rights reserved.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.bgView.layer.cornerRadius=12;
    self.bgView.clipsToBounds=YES;
}

- (void)setName:(NSString *)Name{
    self.cityName.text=Name;
}

- (void)setBgColor:(UIColor *)bgColor{
    self.bgView.backgroundColor=bgColor;
}

@end
