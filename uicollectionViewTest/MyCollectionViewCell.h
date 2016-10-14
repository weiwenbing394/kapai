//
//  MyCollectionViewCell.h
//  uicollectionViewTest
//
//  Created by 大家保 on 2016/10/14.
//  Copyright © 2016年 大家保. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCollectionViewCell : UICollectionViewCell
//背景框
@property (weak, nonatomic) IBOutlet UIView *bgView;
//城市名字label
@property (weak, nonatomic) IBOutlet UILabel *cityName;
//城市名
@property (nonatomic,copy) NSString *Name;
//背景框颜色
@property (nonatomic,strong) UIColor *bgColor;

@end
