//
//  RegistViewController.m
//  StoryboardDemo2
//
//  Created by 候志伟 on 2017/9/20.
//  Copyright © 2017年 bocweb. All rights reserved.
//

#import "RegistViewController.h"

@interface RegistViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLab;

@end

@implementation RegistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"注册";

    self.nameLab.text = self.string;
}


@end
