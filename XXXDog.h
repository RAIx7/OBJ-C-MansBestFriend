//
//  XXXDog.h
//  Man's Best Friend
//
//  Created by Sanjay Rai on 05/08/2014.
//
//

#import <Foundation/Foundation.h>


// Required to set up a custom object.
@interface XXXDog : NSObject

//Properties are attricbutes of an object for example for a dog: name.. breed and age. Properties can be objectives or primitives in thier own way (Primitives include "int float and BOOL"

//We have to give properties a type and a variable name
@property (nonatomic) int age;
//Add a class name to the property (E.g NSString) followed by a variable name. Asterix* before the name6
@property (nonatomic, strong) NSString *breed;
//UIImage is a class which represents an image object
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;








//These are methods which then get implemented in the implementation file ".m"
-(void)bark;

//Methods do not return a value. semi colan followed by type e.g (int) followed by an argument.
-(void)barkANumberOfTimes:(int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
//This method does return a value. We start with (int) to do this.
-(int)ageInDogYearsFromAge:(int)regularAge;
-(void)poopANumberOfTimes:(int)poopTimes;
-(void)poopANumberOfTimes:(int)poopTimes diarrhea:(BOOL)isDiarrhea;





@end
