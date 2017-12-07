//
//  IViewController.h
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IViewController : UIViewController

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
@property (weak, nonatomic) IBOutlet UIImageView *output17;
@property (weak, nonatomic) IBOutlet UIImageView *output18;
@property (weak, nonatomic) IBOutlet UIImageView *output19;
@property (weak, nonatomic) IBOutlet UIImageView *output20;
@property (weak, nonatomic) IBOutlet UIImageView *output21;


@property (weak, nonatomic) IBOutlet UIImageView *T1;
@property (weak, nonatomic) IBOutlet UIImageView *E1;
@property (weak, nonatomic) IBOutlet UIImageView *S1;
@property (weak, nonatomic) IBOutlet UIImageView *L1;
@property (weak, nonatomic) IBOutlet UIImageView *A1;
@property (weak, nonatomic) IBOutlet UIImageView *L2;
@property (weak, nonatomic) IBOutlet UIImageView *A2;
@property (weak, nonatomic) IBOutlet UIImageView *T2;
@property (weak, nonatomic) IBOutlet UIImageView *T3;
@property (weak, nonatomic) IBOutlet UIImageView *E2;
@property (weak, nonatomic) IBOutlet UIImageView *T4;
@property (weak, nonatomic) IBOutlet UIImageView *A3;
@property (weak, nonatomic) IBOutlet UIImageView *S2;
@property (weak, nonatomic) IBOutlet UIImageView *T5;
@property (weak, nonatomic) IBOutlet UIImageView *E3;
@property (weak, nonatomic) IBOutlet UIImageView *T6;
@property (weak, nonatomic) IBOutlet UIImageView *E4;
@property (weak, nonatomic) IBOutlet UIImageView *A4;
@property (weak, nonatomic) IBOutlet UIImageView *L3;
@property (weak, nonatomic) IBOutlet UIImageView *S3;
@property (weak, nonatomic) IBOutlet UIImageView *A5;
@property (weak, nonatomic) IBOutlet UIImageView *T7;
@property (weak, nonatomic) IBOutlet UIImageView *E5;
@property (weak, nonatomic) IBOutlet UIImageView *L4;

@property (weak, nonatomic) IBOutlet UIButton *inputE;
@property (weak, nonatomic) IBOutlet UIButton *inputA;
@property (weak, nonatomic) IBOutlet UIButton *inputL;
@property (weak, nonatomic) IBOutlet UIButton *inputT;
@property (weak, nonatomic) IBOutlet UIButton *inputS;
/*@property (weak, nonatomic) IBOutlet UIButton *inputT2; */
@property (weak, nonatomic) IBOutlet UIButton *NextLevellButton;

- (IBAction)inputtE:(UIButton *)sender;
- (IBAction)inputtA:(UIButton *)sender;
- (IBAction)inputtL:(UIButton *)sender;
- (IBAction)inputtT:(UIButton *)sender;
- (IBAction)inputtS:(UIButton *)sender;
/*- (IBAction)inputtT2:(UIButton *)sender; */
- (IBAction)NextLevelButtonnn:(UIButton *)sender;



@end







