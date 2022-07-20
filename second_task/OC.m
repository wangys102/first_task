#import <Foundation/Foundation.h>

@interface Student : NSObject{
    NSString * name;  //姓名
    NSString * major;  //专业
    int age;  //年龄
}

-(void)study:(NSString *) time;  //学习方法

@end


@implementation Student

-(void)study:(NSString *) time{
	NSLog(@"学生学习了%@个小时",time);
}

@end

int main(int argc, const char *argv[]){
    Student *s1 = [Student new];
    [s1 study:@"10"];

    return 0;
}
