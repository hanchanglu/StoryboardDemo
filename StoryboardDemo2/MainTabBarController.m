//
//  MainTabBarController.m
//  StoryboardDemo2
//
//  Created by 候志伟 on 2017/9/20.
//  Copyright © 2017年 bocweb. All rights reserved.
//

#import "MainTabBarController.h"
#import "HomeViewController.h"
#import "FindViewController.h"
#import "MyViewController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTabBar];
    [self addChildViewControllers];
}

- (void)setupTabBar
{
    [[UITabBarItem appearance] setTitleTextAttributes:@{
                                                        NSFontAttributeName : [UIFont systemFontOfSize:12],
                                                        NSForegroundColorAttributeName : RGBColor(85, 85, 85)
                                                        }
                                             forState:UIControlStateNormal];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{
                                                        NSForegroundColorAttributeName : RGBColor(22, 174, 49)
                                                        }
                                             forState:UIControlStateSelected];
    
    // TabBar背景色
    //self.tabBar.backgroundImage = [UIImage imageNamed:@"toolbar_background"];
    self.tabBar.selectionIndicatorImage = [[UIImage alloc] init];
    self.tabBar.shadowImage = [[UIImage alloc] init];
    self.tabBar.tintColor = [UIColor redColor];
    self.tabBar.backgroundColor = [UIColor whiteColor];
}

- (void)addChildViewControllers
{
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    homeVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:[self getImage:@"tabbar_home"] selectedImage:[self getImage:@"tabbar_home_selected"]];
    
    FindViewController *orderVC = [[FindViewController alloc] init];
    orderVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"发现" image:[self getImage:@"tabbar_work"] selectedImage:[self getImage:@"tabbar_work_selected"]];
    
    MyViewController *mineVC = [[MyViewController alloc] init];
    mineVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"个人" image:[self getImage:@"tabbar_mine"] selectedImage:[self getImage:@"tabbar_mine_selected"]];
    
    NSMutableArray *arrayVC = [NSMutableArray arrayWithObjects:homeVC,orderVC,mineVC, nil];
    
    self.viewControllers = arrayVC;
}

-(UIImage *)getImage:(NSString *)imageName
{
    return [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
