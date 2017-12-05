//
//  ESecondViewController.h
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ESecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *output1;
@property (weak, nonatomic) IBOutlet UIImageView *output2;
@property (weak, nonatomic) IBOutlet UIImageView *output3;
@property (weak, nonatomic) IBOutlet UIImageView *output4;
@property (weak, nonatomic) IBOutlet UIImageView *output5;
@property (weak, nonatomic) IBOutlet UIImageView *output6;
@property (weak, nonatomic) IBOutlet UIImageView *output7;
@property (weak, nonatomic) IBOutlet UIImageView *output8;
@property (weak, nonatomic) IBOutlet UIImageView *output9;
@property (weak, nonatomic) IBOutlet UIImageView *output10;
@property (weak, nonatomic) IBOutlet UIImageView *output11;

@property (weak, nonatomic) IBOutlet UIImageView *O1;
@property (weak, nonatomic) IBOutlet UIImageView *W1;
@property (weak, nonatomic) IBOutlet UIImageView *L1;
@property (weak, nonatomic) IBOutlet UIImageView *L2;
@property (weak, nonatomic) IBOutlet UIImageView *O2;
@property (weak, nonatomic) IBOutlet UIImageView *T1;
@property (weak, nonatomic) IBOutlet UIImageView *T2;
@property (weak, nonatomic) IBOutlet UIImageView *O3;
@property (weak, nonatomic) IBOutlet UIImageView *W2;
@property (weak, nonatomic) IBOutlet UIImageView *W3;
@property (weak, nonatomic) IBOutlet UIImageView *O4;
@property (weak, nonatomic) IBOutlet UIImageView *O5;
@property (weak, nonatomic) IBOutlet UIImageView *R1;
@property (weak, nonatomic) IBOutlet UIImageView *E1;
@property (weak, nonatomic) IBOutlet UIImageView *E2;




@property (weak, nonatomic) IBOutlet UIButton *inputT;
@property (weak, nonatomic) IBOutlet UIButton *inputW;
@property (weak, nonatomic) IBOutlet UIButton *inputO;
@property (weak, nonatomic) IBOutlet UIButton *inputL;
@property (weak, nonatomic) IBOutlet UIButton *inputE;
@property (weak, nonatomic) IBOutlet UIButton *inputR;


- (IBAction)inputtT:(UIButton *)sender;
- (IBAction)inputtW:(UIButton *)sender;
- (IBAction)inputtO:(UIButton *)sender;
- (IBAction)inputtL:(UIButton *)sender;
- (IBAction)inputtE:(UIButton *)sender;
- (IBAction)inputtR:(UIButton *)sender;




@end
