//
//  ViewControllerZW.m
//  Test
//
//  Created by spring on 2019/8/17.
//  Copyright © 2019 spring. All rights reserved.
//

#import "ViewControllerZW.h"

@interface ViewControllerZW ()

@end

@implementation ViewControllerZW

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 40);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(dismissAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view.
}
-(void)dismissAction
{
    [self dismissViewControllerAnimated:true completion:^{
        self.parent.time = @"21:15 2019";
    }];
   // [self dismissViewControllerAnimated:true completion:nil];
    
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
