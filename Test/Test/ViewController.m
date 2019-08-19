//
//  ViewController.m
//  Test
//
//  Created by spring on 2019/8/16.
//  Copyright © 2019 spring. All rights reserved.
// Cocoapods
// JSONKIT
// AFNetWorking
// SVProgressHUD 加载等待动画 = UIActivityIndicator

// Login Demo
//TabBarController + NavigationController
// SCrollView

#import "ViewController.h"
#import "CustomerTableViewCell.h"
#import "ViewControllerZW.h"
#import "SignInViewController.h"
static NSString * cellOne = @"CellOne";

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController
-(void)setTime:(NSString *)time
{
   _time = time;
    NSLog(@"%@",time);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.time =  @"aaa";
    
    UITableView *tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:tableview];
    tableview.delegate = self;
    tableview.dataSource = self;
    tableview.estimatedRowHeight = 80;
    [tableview registerNib:[UINib nibWithNibName:@"CustomerTableViewCell" bundle:nil] forCellReuseIdentifier:cellOne];
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSArray *)nameList{
    return @[@"跳转SignIn",@"进入下一级",@"h返回上一级",@"444444",@"5555555"];
}
- (IBAction)onclick:(id)sender {
   // self.label1.text=@"first";
   // [[self label1] setText:@"first"];
}
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    CustomerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellOne];

    cell.label1.text = [self nameList][indexPath.row];

    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self nameList] count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewAutomaticDimension;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  
    [tableView deselectRowAtIndexPath:indexPath animated:true];
    if (indexPath.row == 0){
        SignInViewController *vw = [[SignInViewController alloc] init];
        //    vw.parent = self;
        [self presentViewController:vw animated:true completion:nil];
    }else if(indexPath.row == 1){
        ViewController *test =[[ViewController alloc]init];
        [self.navigationController pushViewController:test animated:YES];
    }else if (indexPath.row == 2)
    {
        [self.navigationController popViewControllerAnimated:YES];
    }

    
}



@end
