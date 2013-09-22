#import <Foundation/Foundation.h>
#import "PhoneCard.h"
@interface PhoneBook:NSObject
{
  NSString *name;
  NSMutableArray *pb;
}

-(void)addCard;
-(void)entries;
-(void)display;
-(void)removeCard:(NSString*)_name;
-(void)findByName:(NSString*)_name;
-(id)initWithName:(NSString *)i_name;
@end