//
//  Passenger.m
//  College Demo
//
//  Created by wangyangshuai on 2022/7/23.
//

#import "Passenger.h"


@implementation Orders
- (instancetype)initWithName:(NSString *)name date:(NSDate *)date departureStation:(NSString *)departureStation destinationStation:(NSString *)destinationStation position:(NSString *)position {
    if (self = [super init]) {
        [self createPassengerWithName:name date:date departureStation:departureStation destinationStation:destinationStation position:position];
    }
    return self;
}

- (void)createOrdersWithName:(NSString *)name date:(NSDate *)date departureStation:(NSString *)departureStation destinationStation:(NSString *)destinationStation position:(NSString *)position { 
    self.name = name;
    self.date = date;
    self.departureStation = departureStation;
    self.destinationStation = destinationStation;
    self.position = position;

}

@end

@implementation Passenger

- (instancetype)initWithName:(NSString *)name birthday:(nonnull NSDate *)birthday historicalOrder:(Orders *)historicalOrder newOrder:(Orders *)newOrder {
    if (self = [super init]) {
        [self createPassengerWithName:name birthday:birthday historicalOrder:historicalOrder newOrder:newOrder];
    }
    return self;
}

- (void)createPassengerWithName:(NSString *)name birthday:(nonnull NSDate *)birthday historicalOrder:(Orders *)historicalOrder newOrder:(Orders *)newOrder {
    
    self.name = name;
    self.birthday = birthday;
    self.historicalOrder = historicalOrder;
    self.newOrder = newOrder;
}

- (void)buyTicket:(Orders *)personBuy {
    
    self.personBuy = personBuy;
}

- (void)checkTicket:(Orders *)personCheck {
    
    self.personCheck = personCheck;
}

- (NSInteger)age {
    NSDate *now = [NSDate date];
    return [now timeIntervalSince1970] - [self.birthday timeIntervalSince1970];
}



@end
