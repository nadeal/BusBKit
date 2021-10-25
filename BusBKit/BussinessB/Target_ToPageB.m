//
//  Target_ToPageB.m
//  BusBKit
//
//  Created by Billy Pang on 2021/10/25.
//

#import "Target_ToPageB.h"
#import "PageBViewController.h"

@implementation Target_ToPageB

- (UIViewController *)Action_JumpToPageB:(NSDictionary *)param {
    NSLog(@"Action_JumpToPageB");
    return [[PageBViewController alloc] init];
    
}


@end
