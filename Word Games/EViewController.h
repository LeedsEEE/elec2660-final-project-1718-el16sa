//
//  EViewController.h
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *output1; //These outputs are the initial empty boxes the user obsereves before inputting a word correctly.
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

@property (weak, nonatomic) IBOutlet UIButton *inputQ; // These properties are the inputs that are used to work within the code gameplay in the background.
@property (weak, nonatomic) IBOutlet UIButton *inputW;
@property (weak, nonatomic) IBOutlet UIButton *inputE;
@property (weak, nonatomic) IBOutlet UIButton *inputR;
@property (weak, nonatomic) IBOutlet UIButton *inputT;
@property (weak, nonatomic) IBOutlet UIButton *inputA;
@property (weak, nonatomic) IBOutlet UIButton *NextLevelButton;

@property (weak, nonatomic) IBOutlet UIImageView *R1; // These images are the saved and originally hidden images that appear when a user inputs a word correclty.
@property (weak, nonatomic) IBOutlet UIImageView *A1;
@property (weak, nonatomic) IBOutlet UIImageView *T1;
@property (weak, nonatomic) IBOutlet UIImageView *R2;
@property (weak, nonatomic) IBOutlet UIImageView *A2;
@property (weak, nonatomic) IBOutlet UIImageView *W1;
@property (weak, nonatomic) IBOutlet UIImageView *E1;
@property (weak, nonatomic) IBOutlet UIImageView *T2;
@property (weak, nonatomic) IBOutlet UIImageView *T3;
@property (weak, nonatomic) IBOutlet UIImageView *E2;
@property (weak, nonatomic) IBOutlet UIImageView *A3;
@property (weak, nonatomic) IBOutlet UIImageView *R4;
@property (weak, nonatomic) IBOutlet UIImageView *E3;
@property (weak, nonatomic) IBOutlet UIImageView *W2;
@property (weak, nonatomic) IBOutlet UIImageView *A4;






- (IBAction)inputtQ:(UIButton *)sender; // These are the input actions which perform a specific task when pressed on.
- (IBAction)inputtW:(UIButton *)sender;// The inputs are the letters to choose from to make a word and the 'NextLevelButonn' is the action that changes the view controller once the user has chosen a correct word. 
- (IBAction)inputtE:(UIButton *)sender;
- (IBAction)inputtR:(UIButton *)sender;
- (IBAction)inputtT:(UIButton *)sender;
- (IBAction)inputtA:(UIButton *)sender;
- (IBAction)NextLevelButtonn:(UIButton *)sender;





@end
