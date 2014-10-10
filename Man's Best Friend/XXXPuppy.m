//
//  XXXPuppy.m
//  Man's Best Friend
//
//  Created by Sanjay Rai on 31/08/2014.
//
//

#import "XXXPuppy.h"

@implementation XXXPuppy

-(void)givePuppyEyes{
    
    NSLog(@":(");
}

//While class inherit functionality from their parents, there are certainly times where a subclass will want to simply act differently. That is, it won't share the exact functionality of its parent. To accomplish this, a class can override a method declared in its superclass in order to change its behavior. A puppy inherits the method bark from its superclass, a dog. However, a puppy doesn't quite bark like a dog. In this case, the puppy needs to override the bark method.

//Thus whenever the method bark is called on a puppy object, it will respond as a puppy would with a whimper! You should note that a subclass inherits ALL of its superclass' behavior, whether public or private. However, in order for Xcode to help with the autocomplete, the superclass' properties and methods must be declared in the header file. ALthough it is possible to override a method declared only in a superclass' implementation file (and thus private), this is strange and usually frowned upon.

-(void)bark{
    
    //n the previous section we learned that it is possible to override a method defined in our superclass (the class we inherit from) and implement custom functionality for a method. It is also possible to simply extend the functionality of a method. In short, for a method defined in our super class we can gain access to all of its' functionality and then add our own on top.
    
   // To accomplish this we use the super keyword. We've briefly caught a glimpse of this in the ViewController.m file we saw [super viewDidLoad];. In English this means, do everything that my superclass does in this method!
    
   // As a parallel, in our MBFPuppy class, we can call our MBFDog's implementation of bark, and then add our own behavior if we would like.
    
   // [super bark];
    
    // Do more stuff!
    
   // It is quite common to have a subclass implement its superclass' implementation of a method, and in turn that superclass implement its own superclass' implementation. With this, a sort of "chain" occurs up the hierarchy with a method implementing behavior from numerous ancestors.
    
    [super bark];
    NSLog(@"Whimper Whimper");
    [self givePuppyEyes];
    [super poopANumberOfTimes:1 diarrhea:YES];
    
}

@end
