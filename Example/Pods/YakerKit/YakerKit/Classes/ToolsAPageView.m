//
//  ToolsAPageView.m
//  DyNassaTools
//
//  Created by Billy Pang on 2021/10/19.
//

#import "ToolsAPageView.h"
#import <YakerKit/InfoButton.h>
#import <YakerKit/ModuleModel.h>

@interface ToolsAPageView ()

@end

@implementation ToolsAPageView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 30, 250, 40)];
    titleLabel.backgroundColor = [UIColor clearColor];
    titleLabel.text = @"这是DyNassaTools组件内的一个Controller页面";
    titleLabel.font = [UIFont systemFontOfSize:14];
    titleLabel.textColor = [UIColor blackColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
    
    InfoButton *tempBtn = [[InfoButton alloc] initWithFrame:CGRectMake(40, 140, 100, 35)];
    tempBtn.backgroundColor = [UIColor greenColor];
    [tempBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    tempBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [tempBtn setTitle:@"返回" forState:UIControlStateNormal];
    [tempBtn addTarget:self action:@selector(onBackMethod) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tempBtn];
    
    
}

- (void)onBackMethod {
    
    ModuleModel *tempModel = [ModuleModel sharedModuleModel];
    tempModel.name = @"张三的单例 名字";
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
