//
//  XXXViewController.h
//  Man's Best Friend
//
//  Created by Sanjay Rai on 05/08/2014.
//
//

#import <UIKit/UIKit.h>

@interface XXXViewController : UIViewController

-(void)printHelloWorld;
-(void)peesANumberOfTimes:(int)peeTimes;

- (IBAction)newDogBarButtonPressed:(UIBarButtonItem *)sender;



@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
// we create an array in the form of a property to hold all of our dogs in a list
@property (strong, nonatomic) NSMutableArray *myDogs;



@property (nonatomic) int currentIndex;


@end
