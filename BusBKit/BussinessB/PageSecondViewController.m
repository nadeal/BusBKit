//
//  PageSecondViewController.m
//  BusBKit
//
//  Created by Billy Pang on 2021/10/25.
//

#import "PageSecondViewController.h"
#import <YakerKit/ModuleModel.h>

@interface PageSecondViewController ()

@end

@implementation PageSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 200, 45)];
    titleLabel.text = @"组件BusBKit  Page  Second";
    titleLabel.textColor = [UIColor blackColor];
    titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:titleLabel];
    
    NSString *getName = [ModuleModel sharedModuleModel].name;
    NSLog(@"组件库内  底层单例对象 共享 name = %@", getName);
    
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
