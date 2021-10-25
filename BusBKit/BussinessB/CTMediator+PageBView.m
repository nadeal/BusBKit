//
//  CTMediator (PageBView).m
//  BusBKit
//
//  Created by Billy Pang on 2021/10/25.
//

#import "CTMediator+PageBView.h"

@implementation CTMediator (PageBView)

- (UIViewController *)targetJumpToPageB {
    
    return [self performTarget:@"ToPageB"
                        action:@"JumpToPageB"
                        params:@{}
             shouldCacheTarget:NO];
}



@end
