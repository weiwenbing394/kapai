//
//  KapianViewController.m
//  uicollectionViewTest
//
//  Created by 大家保 on 2016/10/14.
//  Copyright © 2016年 大家保. All rights reserved.
//

#import "KapianViewController.h"
#import "StickCollectionViewFlowLayout.h"
#import "KapianCollectionViewCell.h"
static NSString  * const Indentifer=@"Cell2";


@interface KapianViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation KapianViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addKapianArray];
    [self addCollectionView];
}

- (void)addKapianArray{
    self.kapianArray = @[@"Create a Hight Quality, High Ranking Search Ad",
                          @"Evolve Your Ad Campaigns with Programmatic Buying",
                          @"How Remarketing Keeps Customers Coming Back",
                          @"Surviving and Thriving on Social Media",
                          @"Keep Mobile Users Engaged In and Out of Your App",
                          @"Appeal to Searchers and Search Engines with Seo",
                          @"Build Your Business Fast with Growth Hacking",
                          @"Track Your Acquisitions with Digital Metricks"];
}


- (void)addCollectionView{
    StickCollectionViewFlowLayout *layout=[[StickCollectionViewFlowLayout alloc]init];
    layout.scrollDirection=UICollectionViewScrollDirectionVertical;
    layout.firstItemTransform=0.05;
    
    self.myCollectionView=[[UICollectionView alloc]initWithFrame:CGRectMake(0, 64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-64) collectionViewLayout:layout];
    [self.myCollectionView registerNib:[UINib nibWithNibName:NSStringFromClass([KapianCollectionViewCell class]) bundle:nil] forCellWithReuseIdentifier:Indentifer];
    self.myCollectionView.delegate=self;
    self.myCollectionView.dataSource=self;
    self.myCollectionView.backgroundColor=[UIColor clearColor];
    [self.view addSubview:self.myCollectionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.kapianArray.count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    KapianCollectionViewCell *cell=[self.myCollectionView dequeueReusableCellWithReuseIdentifier:Indentifer forIndexPath:indexPath];
    cell.protect=self.kapianArray[indexPath.item];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"点击了%ld",(long)indexPath.item);
};

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(CGRectGetWidth(self.view.bounds), ([[UIScreen mainScreen] bounds].size.height-64)*0.8);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}


- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
