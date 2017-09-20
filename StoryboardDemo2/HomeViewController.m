//
//  HomeViewController.m
//  StoryboardDemo2
//
//  Created by 候志伟 on 2017/9/20.
//  Copyright © 2017年 bocweb. All rights reserved.
//

#import "HomeViewController.h"
#import "LoginViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.fd_prefersNavigationBarHidden = YES;
    
    self.navigationController.navigationItem.title = @"ddfff";
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    LoginViewController *loginVC = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"loginVC"];
    [self.navigationController pushViewController:loginVC animated:YES];
}

@end
