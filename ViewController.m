//
//  ViewController.m
//  CrystalBall
//
//  Created by Dana Bouchard on 4/16/13.
//  Copyright (c) 2013 Dana Bouchard. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize productionLabel;
@synthesize productionArray;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.productionArray = [[NSArray alloc] initWithObjects:@"It is certain", @"It is Decidedly so", @"All signs say YES",
                                @"The stars are not aligned",
                                @"My reply is no",
                                @"It is doubtful",
                                @"Concentrate and ask again",
                                @"Unable to answer now", nil];
	
}

- (void)viewDidUnload
{
    [self setProductionLabel:nil];
    [super viewDidUnload];
}

//-(void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:<#animated#>];
//}
//
//-(void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:<#animated#>];
//}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}
    

//-(void)viewDidDisappear:(BOOL)animated
//{
//    [super viewDidDisappear:animated]; 
//}


//-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
//{
//    // Return YES for orientations
//    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown)
//}



- (IBAction)buttonPressed:(UIButton *)sender {
    NSUInteger index = arc4random_uniform(self.productionArray.count);
    self.productionLabel.text = [self.productionArray objectAtIndex:index];
}
@end
