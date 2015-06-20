//
//  HomeController.m
//  MusicPlayer
//
//  Created by lanou3g on 15/6/10.
//  Copyright (c) 2015年 安晨硕. All rights reserved.
//

#import "HomeController.h"
#import "MovieListCell.h"
#define cellIdentifier1 @"movieCell"
#define HeaderIdentifier2 @"reuserHeader"
@interface HomeController ()

@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(80, 100);
    layout.minimumLineSpacing = 50;
    layout.minimumInteritemSpacing = 20;
    layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    
    UICollectionView * collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    [collectionView registerClass:[MovieListCell class] forCellWithReuseIdentifier:cellIdentifier1];
  
    [collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:HeaderIdentifier2];
    [self.view addSubview:collectionView];
    
    
    
}
#pragma mark 代理方法
//增补视图（header）
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView * reusableView = [collectionView dequeueReusableCellWithReuseIdentifier:HeaderIdentifier2 forIndexPath:indexPath];
    return reusableView;

}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}
#pragma mark ---cellForItem
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MovieListCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier1 forIndexPath:indexPath];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
