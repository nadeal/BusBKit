//
//  InfoButton.m
//  DyNassaTools
//
//  Created by Billy Pang on 2021/10/19.
//

#import "InfoButton.h"

@implementation InfoButton


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor grayColor];
    
    return self;
}


- (void)showInfo {
    [self setTitle:@"组件化按钮" forState:UIControlStateNormal];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
