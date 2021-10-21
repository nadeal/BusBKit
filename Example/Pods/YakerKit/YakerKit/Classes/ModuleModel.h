//
//  ModuleModel.h
//  YakerKit
//
//  Created by Billy Pang on 2021/10/20.
//
#pragma mark 单例 宏定义
// @interface
#define singletonA_interface(className) \
+ (className *)shared##className;


// @implementation
#define singletonA_implementation(className) \
static className *_instance; \
+ (id)allocWithZone:(NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
return _instance; \
} \
+ (className *)shared##className \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[self alloc] init]; \
}); \
return _instance; \
}



#import <Foundation/Foundation.h>




NS_ASSUME_NONNULL_BEGIN

@interface ModuleModel : NSObject
singletonA_interface(ModuleModel)

@property (nonatomic, strong) NSString *name;
@end

NS_ASSUME_NONNULL_END
