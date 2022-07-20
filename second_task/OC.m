#import <Foundation/Foundation.h>

@interface Student : NSObject{
    NSString * name;  //����
    NSString * major;  //רҵ
    int age;  //����
}

-(void)study:(NSString *) time;  //ѧϰ����

@end


@implementation Student

-(void)study:(NSString *) time{
	NSLog(@"ѧ��ѧϰ��%@��Сʱ",time);
}

@end

int main(int argc, const char *argv[]){
    Student *s1 = [Student new];
    [s1 study:@"10"];

    return 0;
}
