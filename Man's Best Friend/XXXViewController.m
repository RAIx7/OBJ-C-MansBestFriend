//
//  XXXViewController.m
//  Man's Best Friend
//
//  Created by Sanjay Rai on 05/08/2014.
//
//

#import "XXXViewController.h"
#import "XXXDog.h"
#import "XXXPuppy.h"

@interface XXXViewController ()

@end

@implementation XXXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Creation of a personalised object. Variable name is "myDog" created using the class name "XXXDog.
    XXXDog *myDog = [[XXXDog alloc] init];
    
    
    //Use "myDog" to access the properties decalred in the XXXDog.h file
    myDog.name = @"Snoops";
    myDog.breed = @"Bulldog";
    myDog.age = 2;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    // "self" to access the properties declared in the Header File.
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    self.currentIndex = 0;
    
    XXXDog *secondDog = [[XXXDog alloc] init];
    secondDog.name = @"Wonka";
    secondDog.breed = @"Jack Russel Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    XXXDog *thirdDog = [[XXXDog alloc] init];
    thirdDog.name = @"Penny";
    thirdDog.breed = @"Border Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    
    XXXDog *fourthDog = [[XXXDog alloc] init];
    fourthDog.name = @"Joey";
    fourthDog.breed = @"Italian GreyHound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    
    // creation of an array and adding objects through creating a property. We have to allocate and initialise. This is otherwise known as a container to hold the objects
    self.myDogs = [[NSMutableArray alloc] init];
    //This is the container. addObject: NSMutableArray can only hold objects not primitives. First object in an array starts at index "0"
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    XXXPuppy *littlePuppy = [[XXXPuppy alloc] init];
    littlePuppy.name = @"Le Bron";
    littlePuppy.breed = @"Portuguese";
    littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];
    
    [littlePuppy bark];
    
    [self.myDogs addObject:littlePuppy];
    
    [myDog poopANumberOfTimes:3 diarrhea:YES];
    
    
    
    //if its in another header file, you have to create an instace of that class which gives you an object and then you can call a method defined in that
    // header file with that object myDog
    //[myDog bark];
    
    
    //If its in your header file, use 'self' to access it
    //[self printHelloWorld];
    
    
    //[myDog barkANumberOfTimes:8 loudly:YES];
    
    // If a method is returning a value, you must capture it in a variable. In this instance, the variable is dogYears. Then proceed to print out in thr NSLog
   //int dogYears = [myDog ageInDogYearsFromAge:myDog.age];
    //NSLog(@"%i", dogYears);
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    
    
    
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)printHelloWorld
{

    NSLog(@"Hello World");
}

- (IBAction)newDogBarButtonPressed:(UIBarButtonItem *)sender
{
    //Use int to capture the amount of dogs in the array by creating a variable. We call the method "count", this is available to all arrays to count the amount of objects in an array.
    int numberOfDogs = [self.myDogs count];
    //we call "arc4random" this returns a number between 0 and any number we choose. Here we are choosing "numberOfDogs" the array.
    int randomIndex = arc4random() % numberOfDogs;
    
    //To make the images not repeat during next dog, we make a property to track the "current image"- "currentIndex" We then use an if statement to say that if the image is == to the randomiIndex image and it happens to be the same and also = 0 from our array then we ++. In pur application we always start with the same dog. This is a result of the code wrtten in "viewDidLoad" which sets up our initial view. As a result we need to give our cuurent index a value and set it == to 0 as 0 is the first number in an array.
    if (self.currentIndex == randomIndex && self.currentIndex == 0) {
        randomIndex ++;
        
    }
    else if (self.currentIndex == randomIndex){
        randomIndex --;
    }
    
    self.currentIndex = randomIndex;
    
    
    //To access a random dog, we create a variable to capture it from our array from the random index we created. We use the class "XXXDog" then create the variable.
    XXXDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
    //This is how we update the UI
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    
    // we use "self.view' to update the current view.
    [UIView transitionWithView:self.view duration:1 options:UIViewAnimationOptionTransitionCurlDown animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    
   
        
    
    
    //This line of code is to change the property text once we click the button.
    sender.title = @"Lets see another Dog!";
    
    
    

}

-(void)peesANumberOfTimes:(int)peeTimes
{
    for (int pee = 1; pee <=peeTimes; pee ++) {
        NSLog(@"peeeeeeeee");
    }
}

@end
