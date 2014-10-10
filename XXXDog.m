//
//  XXXDog.m
//  Man's Best Friend
//
//  Created by Sanjay Rai on 05/08/2014.
//
//

#import "XXXDog.h"

@implementation XXXDog

//The syntax looks like this: self.nameOfProperty.
//For example if we add a property, such as a UILabel named myLabel, we can access it using the self keyword ie. self.myLabel.
//We can also chain multiple properties together using our dot syntax. For example the UILabel class defines a property text which can be used to update the text of a label. We can therefore access our own property using self.myLabel and then immediately access the label’s text property chaining our dot syntax together ie. self.myLabel.text.


//When calling a method, we use curl braces so we can write some code to evaluate once the method has been called.
-(void)bark

{
 
    NSLog(@"WOOF WOOF!");
    
    
}





-(void)barkANumberOfTimes:(int)numberOfTimes
{
    
    //for loop to repeat code without having to re type code.
    for (int bark = 1; bark <= numberOfTimes; bark ++){
        //Methods can called upon in methods using the "Self' keyword
        [self bark];
    }
    
    
}

-(void)changeBreedToWerewolf
{
    self.breed = @"WereWolf";
    
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    // ! in front of the arguement is = to NO(BOOL)
    if (!isLoud){
        

    
    for (int bark = 1; bark <= numberOfTimes; bark ++){
        NSLog(@"Yip Yip");
        
    }
    }
    
    else{
        
        for (int bark = 1; bark <= numberOfTimes; bark ++) {
            NSLog(@"ruff ruff");
        
        }
        
    }
    
    
    
    
    
}

-(int)ageInDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}

-(void)poopANumberOfTimes:(int)poopTimes
{
    for (int poop = 1; poop <= poopTimes; poop ++){
        NSLog(@"Squish Squah i did a big old poop, SPLAT");
    }
}

-(void)poopANumberOfTimes:(int)poopTimes diarrhea:(BOOL)isDiarrhea
{
    if (!isDiarrhea) {
        for (int poop = 1; poop <= poopTimes; poop ++) {
            NSLog(@"poopie");
        }
    }
    else {
        for (int poop = 1; poop <= poopTimes; poop ++){
            NSLog(@"SPLAT SPLAT SPLAT MESSY POO POO");
        }
    }
}







@end
