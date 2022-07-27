//
//  main.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

// Mac 同学用这个
int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    
    // Basic Data Types
    NSInteger i = 1;
    
    CGFloat f = 1.0;
    
    BOOL b = YES || NO;
    
    NSString *s = @"College Demo";
    
    NSNumber *n0 = @(1);
    NSNumber *n1 = [[NSNumber alloc] initWithInt:1];
    NSInteger i1 = [n1 intValue];
    
    NSArray *array = @[@"1",@"2",@(3),[NSArray array]];
    
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isEqualToString:@"2"]) {
            *stop = YES;
        }
    }];
    
    NSMutableArray *mutableArray = [NSMutableArray array];
    [mutableArray addObject:@"1"];
    [mutableArray addObject:nil]; // will crash
    [mutableArray removeObject:@"1"];
    
    NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionary];
    [mutableDictionary setObject:@"1" forKey:@"key1"];
    [mutableDictionary removeObjectForKey:@"key1"];
    [mutableDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
    }];
    
    NSMutableSet *set1 = [[NSMutableSet alloc] initWithSet:mutableArray];
    [set1 removeObject:@"1"];
    
    [set enumerateObjectsUsingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
            
    }];
    
    NSLog(@"123");
    
    
    
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}


// Windows 同学用这个

//#import <Foundation/Foundation.h>
//
//int main (int argc, const char *argv[])
//{
//    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
//    NSLog(@"%@",@"hello world");
//    [pool drain];
//    return 0;
//}
