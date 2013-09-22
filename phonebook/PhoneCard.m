#import <Foundation/Foundation.h>
#import "PhoneCard.h"

@implementation PhoneCard

@synthesize name;
@synthesize email;
@synthesize number;
-(void)print
{
  NSLog(@"\n name: %@ \n email: %@ \n phone number :  %d ",name,email,number);
}

@end