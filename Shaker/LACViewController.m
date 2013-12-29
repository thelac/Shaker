//
//  LACViewController.m
//  Shaker
//
//  Created by Daniel Suo on 12/29/13.
//  Copyright (c) 2013 The Leather Apron Club. All rights reserved.
//

#import "LACViewController.h"

@interface LACViewController ()

@end

@implementation LACViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
    {
        [self showAlert];
    } 
}

-(IBAction)showAlert
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Hello World" message:@"This is my first app!" delegate:nil cancelButtonTitle:@"Awesome" otherButtonTitles:nil];
    
    [alertView show];
}

@end
