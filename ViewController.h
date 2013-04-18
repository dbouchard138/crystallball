//
//  ViewController.h
//  CrystalBall
//
//  Created by Dana Bouchard on 4/16/13.
//  Copyright (c) 2013 Dana Bouchard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
}

@property (strong, nonatomic) IBOutlet UILabel *productionLabel;
@property (strong, nonatomic) NSArray *productionArray;

- (IBAction)buttonPressed:(UIButton *)sender;





@end
