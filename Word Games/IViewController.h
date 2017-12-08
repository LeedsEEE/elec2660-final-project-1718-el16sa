//
//  IViewController.h
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *EmptyOutputs;



@property (weak, nonatomic) IBOutlet UIImageView *T1;
@property (weak, nonatomic) IBOutlet UIImageView *A1;
@property (weak, nonatomic) IBOutlet UIImageView *L1;
@property (weak, nonatomic) IBOutlet UIImageView *E1;
@property (weak, nonatomic) IBOutlet UIImageView *S1;



@property (weak, nonatomic) IBOutlet UIImageView *A2;
@property (weak, nonatomic) IBOutlet UIImageView *T2;
@property (weak, nonatomic) IBOutlet UIImageView *S3;
@property (weak, nonatomic) IBOutlet UIImageView *T3;


@property (weak, nonatomic) IBOutlet UIImageView *E2;
@property (weak, nonatomic) IBOutlet UIImageView *E3;
@property (weak, nonatomic) IBOutlet UIImageView *S4;

@property (weak, nonatomic) IBOutlet UIImageView *A3;
@property (weak, nonatomic) IBOutlet UIImageView *L3;
@property (weak, nonatomic) IBOutlet UIImageView *A4;
@property (weak, nonatomic) IBOutlet UIImageView *L4;
@property (weak, nonatomic) IBOutlet UIImageView *A5;
@property (weak, nonatomic) IBOutlet UIImageView *S5;
@property (weak, nonatomic) IBOutlet UIImageView *E4;
@property (weak, nonatomic) IBOutlet UIImageView *R5;
@property (weak, nonatomic) IBOutlet UIImageView *T4;
@property (weak, nonatomic) IBOutlet UIImageView *E5;
@property (weak, nonatomic) IBOutlet UIImageView *L5;
@property (weak, nonatomic) IBOutlet UIImageView *R4;
@property (weak, nonatomic) IBOutlet UIImageView *R3;
@property (weak, nonatomic) IBOutlet UIImageView *Tn;


@property (weak, nonatomic) IBOutlet UIButton *inputE;
@property (weak, nonatomic) IBOutlet UIButton *inputA;
@property (weak, nonatomic) IBOutlet UIButton *inputL;
@property (weak, nonatomic) IBOutlet UIButton *inputT;
@property (weak, nonatomic) IBOutlet UIButton *inputS;
@property (weak, nonatomic) IBOutlet UIButton *inputR;
@property (weak, nonatomic) IBOutlet UIButton *NextLevellButton;

- (IBAction)inputtE:(UIButton *)sender;
- (IBAction)inputtA:(UIButton *)sender;
- (IBAction)inputtL:(UIButton *)sender;
- (IBAction)inputtT:(UIButton *)sender;
- (IBAction)inputtS:(UIButton *)sender;
- (IBAction)inputtR:(UIButton *)sender;
- (IBAction)NextLevelButtonnn:(UIButton *)sender;



@end







