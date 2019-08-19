//
//  ZWTabViewController.m
//  Test
//
//  Created by spring on 2019/8/18.
//  Copyright © 2019 spring. All rights reserved.
//

#import "ZWTabViewController.h"
#import "ViewController.h"
@interface ZWTabViewController ()

@end

@implementation ZWTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUPData];
    // Do any additional setup after loading the view.
}
-(void)setUPData{
    ViewController *item1 = [[ViewController alloc]init];
    
    ViewController *item2 = [[ViewController alloc]init];
    
    ViewController *item3 = [[ViewController alloc]init];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:item1];
        UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:item2];
        UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:item3];
   
    nav1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"item1" image: [UIImage imageNamed:@"ic_menu_home_on"] tag:0];
    nav2.tabBarItem =  [[UITabBarItem alloc] initWithTitle:@"item2" image: [UIImage imageNamed:@"ic_menu_home_on"] tag:1];
    nav3.tabBarItem =  [[UITabBarItem alloc] initWithTitle:@"item3" image: [UIImage imageNamed:@"ic_menu_home_on"] tag:2];
    self.viewControllers = @[nav1,nav2,nav3];
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
