//
//  MViewController.h
//  Word Games
//
//  Created by Salah El Abd on 11/23/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioToolbox/AudioToolbox.h"
#import <AVFoundation/AVFoundation.h>

@interface MViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *empty1;
@property (weak, nonatomic) IBOutlet UIImageView *empty2;
@property (weak, nonatomic) IBOutlet UIImageView *empty3;
@property (weak, nonatomic) IBOutlet UIImageView *empty4;
@property (weak, nonatomic) IBOutlet UIImageView *empty5;
@property (weak, nonatomic) IBOutlet UIImageView *empty6;
@property (weak, nonatomic) IBOutlet UIImageView *empty7;
@property (weak, nonatomic) IBOutlet UIImageView *empty8;
@property (weak, nonatomic) IBOutlet UIImageView *empty9;
@property (weak, nonatomic) IBOutlet UIImageView *empty10;
@property (weak, nonatomic) IBOutlet UIImageView *empty11;
@property (weak, nonatomic) IBOutlet UIImageView *empty12;
@property (weak, nonatomic) IBOutlet UIImageView *empty13;
@property (weak, nonatomic) IBOutlet UIImageView *empty14;
@property (weak, nonatomic) IBOutlet UIImageView *empty15;
@property (weak, nonatomic) IBOutlet UIImageView *empty16;




@property IBOutlet UIButton *input1;

@property IBOutlet UIButton *input2;
@property  IBOutlet UIButton *input3;

@property  IBOutlet UIButton *input4;

@property  IBOutlet UIButton *input5;

@property  IBOutlet UIButton *input6;

- (IBAction)inputt1:(UIButton *)sender;
- (IBAction)inputt2:(UIButton *)sender;
- (IBAction)inputt3:(UIButton *)sender;
- (IBAction)inputt4:(UIButton *)sender;
- (IBAction)inputt5:(UIButton *)sender;
- (IBAction)inputt6:(UIButton *)sender;
- (IBAction)NextLevelButtonn:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *inputTWrong;
@property (weak, nonatomic) IBOutlet UIButton *inputQWrong;
@property (weak, nonatomic) IBOutlet UIButton *inputIWrong;
@property (weak, nonatomic) IBOutlet UIButton *inputMWrong;
- (IBAction)inputtTWrong:(UIButton *)sender;
- (IBAction)inputtQWrong:(UIButton *)sender;
- (IBAction)inputtIWrong:(UIButton *)sender;
- (IBAction)inputtMWrong:(UIButton *)sender;
@property NSString* Livess3;
@property (weak, nonatomic) IBOutlet UILabel *LivesLabel3;






@property (weak, nonatomic) IBOutlet UIImageView *F1;
@property (weak, nonatomic) IBOutlet UIImageView *O1;
@property (weak, nonatomic) IBOutlet UIImageView *R1;
@property (weak, nonatomic) IBOutlet UIImageView *D1;
@property (weak, nonatomic) IBOutlet UIImageView *F2;
@property (weak, nonatomic) IBOutlet UIImageView *A1;
@property (weak, nonatomic) IBOutlet UIImageView *R2;
@property (weak, nonatomic) IBOutlet UIImageView *E1;
@property (weak, nonatomic) IBOutlet UIImageView *D2;
@property (weak, nonatomic) IBOutlet UIImageView *E2;
@property (weak, nonatomic) IBOutlet UIImageView *A2;
@property (weak, nonatomic) IBOutlet UIImageView *F3;
@property (weak, nonatomic) IBOutlet UIImageView *A3;
@property (weak, nonatomic) IBOutlet UIImageView *F4;
@property (weak, nonatomic) IBOutlet UIImageView *R3;
@property (weak, nonatomic) IBOutlet UIImageView *O2;
@property (weak, nonatomic) IBOutlet UIImageView *R4;
@property (weak, nonatomic) IBOutlet UIImageView *O3;
@property (weak, nonatomic) IBOutlet UIImageView *D3;
@property (weak, nonatomic) IBOutlet UIImageView *E3;
@property IBOutlet UIButton *NextLevelButton;




@end

