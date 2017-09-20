//
//  LoginViewController.m
//  StoryboardDemo2
//
//  Created by 候志伟 on 2017/9/20.
//  Copyright © 2017年 bocweb. All rights reserved.
//

#import "LoginViewController.h"
#import "ForgetViewController.h"
#import "RegistViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *psdTF;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登录";
    self.fd_interactivePopDisabled = YES;

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"protolPush"]) {
        LoginViewController *sourceVC = segue.sourceViewController;
        RegistViewController *registVC = segue.destinationViewController;
        registVC.string = sourceVC.psdTF.text;
    }else if ([segue.identifier isEqualToString:@"registPush"]) {
        LoginViewController *sourceVC = segue.sourceViewController;
        RegistViewController *registVC = segue.destinationViewController;
        registVC.string = sourceVC.nameTF.text;
    }
}

- (IBAction)forgetAction:(id)sender {
    ForgetViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"forgetVC"];
    [self.navigationController pushViewController:vc animated:YES];
}



@end
