//
//  CustomTabBarController.m
//  MusicPlayer
//
//  Created by lanou3g on 15/6/8.
//  Copyright (c) 2015年 安晨硕. All rights reserved.
//

#import "CustomTabBarController.h"
#import "SpecialTrainCampController.h"
#import "HotTopicController.h"
#import "HomeController.h"
@interface CustomTabBarController ()

@end

@implementation CustomTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    SpecialTrainCampController * specialTraVC = [[SpecialTrainCampController alloc]init];
//    UINavigationController * navSpecialTra = [[UINavigationController alloc]initWithRootViewController:specialTraVC];
//    [self addChildViewController:specialTraVC];
    
//    HotTopicController * hotTopicVC = [[HotTopicController alloc]init];
//    UINavigationController * navHotTopic = [[UINavigationController alloc]initWithRootViewController:hotTopicVC];
    
//    [self addChildViewController:hotTopicVC];
//    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
    
    HomeController * homeVC = [[HomeController alloc]init];
    UINavigationController * navHome = [[UINavigationController alloc]initWithRootViewController:homeVC];
    [self addChildViewController:navHome];
    
    
    
    
    
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
