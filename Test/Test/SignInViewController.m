//
//  SignInViewController.m
//  Test
//
//  Created by spring on 2019/8/18.
//  Copyright © 2019 spring. All rights reserved.
//

#import "SignInViewController.h"
#import "ZWTabViewController.h"
@interface SignInViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn_signIn;
- (IBAction)doSignIn:(id)sender;

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _btn_signIn.layer.cornerRadius = 10;
    _btn_signIn.layer.masksToBounds = YES;
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)doSignIn:(id)sender {
    ZWTabViewController *test = [[ZWTabViewController alloc]init];
    [self presentViewController:test animated:YES completion:nil];
    
}
@end
