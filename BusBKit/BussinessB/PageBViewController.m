//
//  PageBViewController.m
//  Pods-BusBKit_Example
//
//  Created by Billy Pang on 2021/10/25.
//

#import "PageBViewController.h"
#import <YakerKit/InfoButton.h>
@interface PageBViewController ()

@end

@implementation PageBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 200, 45)];
    titleLabel.text = @"组件BusBKit  Page  B";
    titleLabel.textColor = [UIColor blackColor];
    titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:titleLabel];
    
    InfoButton *tempBtn = [[InfoButton alloc] initWithFrame:CGRectMake(10, 80, 80, 35)];
    [tempBtn addTarget:self action:@selector(onPopPage) forControlEvents:UIControlEventTouchUpInside];
    [tempBtn setTitle:@"Pop" forState:UIControlStateNormal];
    [self.view addSubview:tempBtn];
    
    InfoButton *dismissBtn = [[InfoButton alloc] initWithFrame:CGRectMake(120, 80, 80, 35)];
    [dismissBtn addTarget:self action:@selector(onDismissPage) forControlEvents:UIControlEventTouchUpInside];
    [dismissBtn setTitle:@"Dismiss" forState:UIControlStateNormal];
    [self.view addSubview:dismissBtn];
    
}

- (void)onPopPage {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)onDismissPage {
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
