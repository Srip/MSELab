#import <Foundation/Foundation.h>

@interface PhoneCard:NSObject
{
   NSString *name;
   NSString *email;
   int number;
}
@property (assign)NSString *name;
@property (assign)NSString *email;
@property (assign)int number;
-(void)print;
@end