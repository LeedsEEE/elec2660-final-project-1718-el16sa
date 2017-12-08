//
//  ISecondViewController.h
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ISecondViewController : UIViewController
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *Outputs;
@property (weak, nonatomic) IBOutlet UIImageView *T1;
@property (weak, nonatomic) IBOutlet UIImageView *R1;
@property (weak, nonatomic) IBOutlet UIImageView *I1;
@property (weak, nonatomic) IBOutlet UIImageView *S1;
@property (weak, nonatomic) IBOutlet UIImageView *O1;
@property (weak, nonatomic) IBOutlet UIImageView *O2;
@property (weak, nonatomic) IBOutlet UIImageView *M1;
@property (weak, nonatomic) IBOutlet UIImageView *I2;
@property (weak, nonatomic) IBOutlet UIImageView *T2;
@property (weak, nonatomic) IBOutlet UIImageView *S2;
@property (weak, nonatomic) IBOutlet UIImageView *I3;
@property (weak, nonatomic) IBOutlet UIImageView *S3;
@property (weak, nonatomic) IBOutlet UIImageView *S4;
@property (weak, nonatomic) IBOutlet UIImageView *M3;
@property (weak, nonatomic) IBOutlet UIImageView *M2;
@property (weak, nonatomic) IBOutlet UIImageView *M4;
@property (weak, nonatomic) IBOutlet UIImageView *I4;
@property (weak, nonatomic) IBOutlet UIImageView *T3;
@property (weak, nonatomic) IBOutlet UIImageView *T4;
@property (weak, nonatomic) IBOutlet UIImageView *T5;
@property (weak, nonatomic) IBOutlet UIImageView *O3;
@property (weak, nonatomic) IBOutlet UIImageView *I5;
@property (weak, nonatomic) IBOutlet UIImageView *R2;

@property (weak, nonatomic) IBOutlet UIButton *inputI;
@property (weak, nonatomic) IBOutlet UIButton *inputM;
@property (weak, nonatomic) IBOutlet UIButton *inputO;
@property (weak, nonatomic) IBOutlet UIButton *inputR;
@property (weak, nonatomic) IBOutlet UIButton *inputS;
@property (weak, nonatomic) IBOutlet UIButton *inputT;


- (IBAction)inputtI:(UIButton *)sender;
- (IBAction)inputtM:(UIButton *)sender;
- (IBAction)inputtO:(UIButton *)sender;
- (IBAction)inputtR:(UIButton *)sender;
- (IBAction)inputtS:(UIButton *)sender;
- (IBAction)inputtT:(UIButton *)sender;





@end
