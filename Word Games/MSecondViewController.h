//
//  SecondViewController.h
//  Word Games
//
//  Created by Salah El Abd on 11/29/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioToolbox/AudioToolbox.h"
#import <AVFoundation/AVFoundation.h>

@interface MSecondViewController : UIViewController

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
@property (weak, nonatomic) IBOutlet UIImageView *output12;
@property (weak, nonatomic) IBOutlet UIImageView *output13;
@property (weak, nonatomic) IBOutlet UIImageView *output14;
@property (weak, nonatomic) IBOutlet UIImageView *output15;
@property (weak, nonatomic) IBOutlet UIImageView *output16;


@property (weak, nonatomic) IBOutlet UIImageView *L1Second;
@property (weak, nonatomic) IBOutlet UIImageView *O1Second;
@property (weak, nonatomic) IBOutlet UIImageView *S1Second;
@property (weak, nonatomic) IBOutlet UIImageView *T1Second;
@property (weak, nonatomic) IBOutlet UIImageView *S2Second;
@property (weak, nonatomic) IBOutlet UIImageView *O2Second;
@property (weak, nonatomic) IBOutlet UIImageView *R1Second;
@property (weak, nonatomic) IBOutlet UIImageView *E1Second;
@property (weak, nonatomic) IBOutlet UIImageView *R2Second;
@property (weak, nonatomic) IBOutlet UIImageView *E2Second;
@property (weak, nonatomic) IBOutlet UIImageView *S3Second;
@property (weak, nonatomic) IBOutlet UIImageView *T2Second;
@property (weak, nonatomic) IBOutlet UIImageView *S4Second;
@property (weak, nonatomic) IBOutlet UIImageView *L2Second;
@property (weak, nonatomic) IBOutlet UIImageView *O3Second;
@property (weak, nonatomic) IBOutlet UIImageView *E3Second;
@property (weak, nonatomic) IBOutlet UIImageView *L3Second;
@property (weak, nonatomic) IBOutlet UIImageView *E4Second;
@property (weak, nonatomic) IBOutlet UIImageView *S5Second;
@property (weak, nonatomic) IBOutlet UIImageView *T3Second;



@property IBOutlet UIButton *BackLevelButton;
@property  IBOutlet UIButton *inputR;
@property  IBOutlet UIButton *inputO;
@property  IBOutlet UIButton *inputS;
@property  IBOutlet UIButton *inputT;
@property  IBOutlet UIButton *inputE;
@property  IBOutlet UIButton *inputL;






- (IBAction)BackLevelButtonn:(UIButton *)sender;
- (IBAction)inputtR:(UIButton *)sender;
- (IBAction)inputtO:(UIButton *)sender;
- (IBAction)inputtS:(UIButton *)sender;
- (IBAction)inputtT:(UIButton *)sender;
- (IBAction)inputtE:(UIButton *)sender;
- (IBAction)inputtL:(UIButton *)sender;


@end
