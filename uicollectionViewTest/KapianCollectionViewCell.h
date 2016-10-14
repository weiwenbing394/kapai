//
//  KapianCollectionViewCell.h
//  uicollectionViewTest
//
//  Created by 大家保 on 2016/10/14.
//  Copyright © 2016年 大家保. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KapianCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *textName;

@property (nonatomic,copy) NSString *protect;

@end
