#import <Foundation/Foundation.h>
#import "PhoneBook.h"
#import "PhoneCard.h"

int main(int argc , char *argv[])
{
	int choice=0;
	char name[25];
	
		 PhoneBook *phonebook = [[PhoneBook alloc]initWithName:@"abc"];
				 do
				 {
				 NSLog(@"Enter 1 :addcard 2.no of entries 3.removeCard 4.display 5.findbyname 0 :exit\n");
				 scanf("%d",&choice);
				 switch(choice)
				 {
				 	case 1 :NSLog(@"entered 1") ;
				 			[phonebook addCard];
				 			  break;
				 	case 2 :[phonebook entries];
				 			  break;
				 	case 3 :printf("enter name\n");
				 			scanf("%s",name);
				 			NSString *removename = [NSString stringWithUTF8String:name];
				 			[phonebook removeCard:removename];
				 			break;
				 	case 4: [phonebook display];
				 			break;
				 	case 5: printf("enter name\n");
				 			scanf("%s",name);
				 			NSString *findname = [NSString stringWithUTF8String:name];
				 			[phonebook findByName:findname];

				 }
				}while(choice != 0);
				
 [phonebook release];
return 0;
 
}
