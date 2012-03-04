//
//  RCIViewController.m
//  Ruby China
//
//  Created by 来 诺 on 3/4/12.
//  Copyright (c) 2012 lainuo.info. All rights reserved.
//

#import "RCIViewController.h"

@interface RCIViewController ()

@end

@implementation RCIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
