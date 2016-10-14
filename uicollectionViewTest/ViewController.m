//
//  ViewController.m
//  uicollectionViewTest
//
//  Created by 大家保 on 2016/10/14.
//  Copyright © 2016年 大家保. All rights reserved.
//

#import "ViewController.h"
#import "StickCollectionViewFlowLayout.h"
#import "MyCollectionViewCell.h"
#import "UIColor+Hex.h"

static NSString *const collectionViewIndentifer=@"Cell";

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initArray];
    [self addCollectionView];
}



- (void)initArray{
    self.cityArray = @[@"Bangkok", @"Barcelona", @"Beijing", @"Istanbul", @"Kiev", @"Kyoto", @"London", @"Madrid", @"Moscow", @"New York", @"Paris", @"Prague", @"Rio", @"Rome", @"St.Petersburg", @"Tokyo", @"Venice", @"Vienna"];
    self.colorArray = @[@"EE5464", @"DC4352", @"FD6D50", @"EA583F", @"F6BC43", @"8DC253", @"4FC2E9", @"3CAFDB", @"5D9CEE", @"4B89DD", @"AD93EE", @"977BDD", @"EE87C0", @"D971AE", @"903FB1", @"9D56B9", @"227FBD", @"2E97DE"];
}

- (void)addCollectionView{
    StickCollectionViewFlowLayout *layout=[[StickCollectionViewFlowLayout alloc]init];
    layout.scrollDirection=UICollectionViewScrollDirectionVertical;
    
    self.myCollectionView=[[UICollectionView alloc]initWithFrame:CGRectMake(0, 64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-64) collectionViewLayout:layout];
    [self.myCollectionView registerNib:[UINib nibWithNibName:NSStringFromClass([MyCollectionViewCell class]) bundle:nil] forCellWithReuseIdentifier:collectionViewIndentifer];
    self.myCollectionView.delegate=self;
    self.myCollectionView.dataSource=self;
    self.myCollectionView.backgroundColor=[UIColor whiteColor];
    self.myCollectionView.showsVerticalScrollIndicator=YES;
    self.myCollectionView.showsHorizontalScrollIndicator=NO;
    [self.view addSubview:self.myCollectionView];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.colorArray.count>self.cityArray.count?self.cityArray.count:self.colorArray.count;
};

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    MyCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:collectionViewIndentifer forIndexPath:indexPath];
    cell.Name=self.cityArray[indexPath.item];
    cell.bgColor=[UIColor colorFromHexString:self.colorArray[indexPath.item]];
    return cell;
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"点击了%ld",(long)indexPath.item);
};


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(CGRectGetWidth(self.view.bounds), 120);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return -20;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
