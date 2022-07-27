//
//  Passenger.h
//  College Demo
//
//  Created by wangyangshuai on 2022/7/23.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, copy) NSString *departureStation;
@property (nonatomic, copy) NSString *destinationStation;
@property (nonatomic, copy) NSString *position;

- (instancetype)initWithName:(NSString *)name date:(NSDate *)date departureStation:(NSString *)departureStation destinationStation:(NSString *)destinationStation position:(NSString *)position;

@end

@interface Passenger : Person
// @property 属性
// 是否年满 18 岁
// 历史订单 （数组）
// 未出行订单 （数组）
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSDate *birthday;
@property (nonatomic, assign, readonly) NSInteger age;
@property (nonatomic, strong) Orders *historicalOrder = [NSMutableArray array];
@property (nonatomic, strong) Orders *newOrder = [NSMutableArray array];


// Function 方法
- (instancetype)initWithName:(NSString *)name birthday:(NSDate *)birthday historicalOrder:(Orders *)historicalOrder newOrder:(Orders *)newOrder;
// 去订票
- (void)buyTicket:(Orders *)personBuy;
// 去检票
- (void)checkTicket:(Orders *)personCheck;
@end

NS_ASSUME_NONNULL_END
