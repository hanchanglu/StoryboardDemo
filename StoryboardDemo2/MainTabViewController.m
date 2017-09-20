//
//  MainTabViewController.m
//  TJProperty
//
//  Created by Miffy@Remmo on 15-5-26.
//  Copyright (c) 2015年 bocweb. All rights reserved.
//

#import "MainTabViewController.h"
#import "MainNavigationController.h"
#import "HomeViewController.h"
#import "FindViewController.h"
#import "MyViewController.h"

@interface MainTabViewController ()<UITabBarControllerDelegate>

@end

@implementation MainTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{
                                                        NSFontAttributeName : [UIFont systemFontOfSize:12],
                                                        NSForegroundColorAttributeName : RGBColor(85, 85, 85)
                                                        }
                                             forState:UIControlStateNormal];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{
                                                        NSForegroundColorAttributeName : RGBColor(22, 174, 49)
                                                        }
                                             forState:UIControlStateSelected];
    
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    [self addChildViewController:homeVC withImageName:@"tabbar_home" title:@"首页"];
    
    FindViewController *orderVC = [[FindViewController alloc] init];
    [self addChildViewController:orderVC withImageName:@"tabbar_work" title:@"发现"];

    MyViewController *mineVC = [[MyViewController alloc] init];
    [self addChildViewController:mineVC withImageName:@"tabbar_mine" title:@"个人"];
    
    //TabBar背景色
    self.tabBar.backgroundImage = [UIImage imageNamed:@"toolbar_background2"];
    self.tabBar.selectionIndicatorImage = [[UIImage alloc]init];
    self.tabBar.shadowImage = [[UIImage alloc]init];
    
    self.delegate = self;
    
    [self setSelectedIndex:1];
}

- (void)addChildViewController:(UIViewController *)childController withImageName:(NSString *)icon title:(NSString *)title
{
    UITabBarItem *item = childController.tabBarItem;
    
    childController.title = title;
    
    NSString *selectIcon = [icon stringByAppendingString:@"_selected"];
    UIImage *iconImage = [UIImage imageNamed:icon];
    UIImage *selectIconImage = [UIImage imageNamed:selectIcon];
    if ([iconImage respondsToSelector:@selector(imageWithRenderingMode:)]) {
        iconImage = [iconImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    if ([selectIconImage respondsToSelector:@selector(imageWithRenderingMode:)]) {
        selectIconImage = [selectIconImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    //item.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    item.image = iconImage;
    item.selectedImage = selectIconImage;
    MainNavigationController *nav = [[MainNavigationController alloc]initWithRootViewController:childController];
    
    [self addChildViewController:nav];
}

@end
