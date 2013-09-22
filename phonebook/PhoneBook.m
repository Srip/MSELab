#import <Foundation/Foundation.h>
#import "PhoneBook.h"
#import "PhoneCard.h"

@implementation PhoneBook

-(id)init
{
 [self initWithName:@"NO NAME"];
 return self;
}

-(id)initWithName:(NSString*)i_name
{
 self = [super init];
 
 if(self)
 {
  name = [[NSString alloc] initWithString:i_name];
  pb = [[NSMutableArray alloc]init];
 }
 return self;  
}

-(void)addCard
{
  char n[25],e[25];
  int ph=0;
  printf("Enter the name\n"); 
  scanf("%s",n);
  printf("Enter the email\n");
  scanf("%s",e);
  printf("enter the number\n");
  scanf("%d",&ph);
  NSString *na = [NSString stringWithUTF8String:n];
  NSString *em = [NSString stringWithUTF8String:e];
  PhoneCard *p = [[PhoneCard alloc]init];
  [p setName: na];
  [p setEmail:em];
  [p setNumber:ph];
  [pb addObject:p];
 }
  

-(void)entries
{
    printf("the number of entries are: %d\n",[pb count]);
}

-(void)display
{
   for ( PhoneCard *item in pb)
   {
   NSLog(@"------");
   NSLog(@"Name :%@\n email : %@\n phone no:%d\n",item.name , item.email,item.number);
   NSLog(@"------");
   }
}

-(void)removeCard:(NSString*)_name
{
  int index =-1;
 for(PhoneCard *item in pb)
 {
  if([item.name isEqualToString:_name])
  {
    NSLog(@"Removing the phonecard...");
    index = [pb indexOfObject:item];
  }

 }
 if(index == -1)
  NSLog(@"The phonecard not found\n");
else
  [pb removeObjectAtIndex:index];
 
}

-(void)findByName:(NSString*)_name
{
  
  for(PhoneCard *item in pb)
  {
   
    if([item.name isEqualToString:_name])
    {

       NSLog(@"Name :%@\n email : %@\n phone no:%d\n",item.name , item.email,item.number);
    }
  }
}
@end