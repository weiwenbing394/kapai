//
//  KapianCollectionViewCell.m
//  uicollectionViewTest
//
//  Created by 大家保 on 2016/10/14.
//  Copyright © 2016年 大家保. All rights reserved.
//

#import "KapianCollectionViewCell.h"

@implementation KapianCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setProtect:(NSString *)protect{
    self.textName.text=protect;
}

@end
