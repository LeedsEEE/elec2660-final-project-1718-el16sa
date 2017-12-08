//
//  SecondViewController.m
//  Word Games
//
//  Created by Salah El Abd on 11/29/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MSecondViewController.h"
#import "MViewController.h"
@import MediaPlayer;

@interface MSecondViewController ()

@end
int lives4;
AVAudioPlayer *correct3;

@implementation MSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.L1Second.hidden = true;
    self.O1Second.hidden = true;
    self.S1Second.hidden = true;
    self.T1Second.hidden = true;
    self.S2Second.hidden = true;
    self.O2Second.hidden = true;
    self.R1Second.hidden = true;
    self.E1Second.hidden = true;
    self.R2Second.hidden = true;
    self.E2Second.hidden = true;
    self.S3Second.hidden = true;
    self.T2Second.hidden = true;
    self.O3Second.hidden = true;
    self.L2Second.hidden = true;
    self.E3Second.hidden = true;
    self.L3Second.hidden = true;
    self.E4Second.hidden = true;
    self.S4Second.hidden = true;
    self.S5Second.hidden = true;
    self.T3Second.hidden = true;
    NSURL *CorrectSound = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/correct.wav",[[NSBundle mainBundle] resourcePath]]];
    correct3 = [[AVAudioPlayer alloc] initWithContentsOfURL:CorrectSound error:nil];
    lives4 = 3;
    _Livess4 = [NSString stringWithFormat:@"Lives: 3"];
    _LivesLabel4.text = _Livess4;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}









/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)inputtAWrong:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"Selected");
        [sender setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"a-red.png"]  forState: UIControlStateNormal];
        sender.selected = YES;
    }
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
    
}


- (IBAction)inputtWWrong:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"Selected");
        [sender setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"w-red.png"]  forState: UIControlStateNormal];
        sender.selected = YES;
    }
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
    
}

- (IBAction)inputtMWrong:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"Selected");
        [sender setImage:[UIImage imageNamed:@"m.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"m-red.png"]  forState: UIControlStateNormal];
        sender.selected = YES;
    }
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
    
}

- (IBAction)inputQWrong:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"Selected");
        [sender setImage:[UIImage imageNamed:@"q.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"q-red.png"]  forState: UIControlStateNormal];
        sender.selected = YES;
    }
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
    
}

- (IBAction)BackLevelButtonn:(UIButton *)sender {
    if (sender.selected) {
        [self BackLevel];
    }

 
 
 }




 -(void)BackLevel{
 MViewController *MSecondViewController;
 MSecondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MViewController"];
 [self presentViewController:MSecondViewController animated:YES completion:nil];
 
 }
 
- (IBAction)inputtR:(UIButton *)sender;{
         if ([sender isSelected]) {
             NSLog(@"Selected");
             [sender setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
             sender.selected = NO;
         }
         else { //no
             NSLog(@"Unselected");
             [sender setImage: [UIImage imageNamed:@"r-red.png"]  forState: UIControlStateNormal];
             sender.selected = YES;
         }
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
  
     }
- (IBAction)inputtO:(UIButton *)sender;{
         if ([sender isSelected]) {
             NSLog(@"Selected");
             [sender setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
             sender.selected = NO;
         }
         else { //no
             NSLog(@"Unselected");
             [sender setImage: [UIImage imageNamed:@"o-red.png"]  forState: UIControlStateNormal];
             sender.selected = YES;
         }
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];

     }
- (IBAction)inputtS:(UIButton *)sender;{
         if ([sender isSelected]) {
             NSLog(@"Selected");
             [sender setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
             sender.selected = NO;
         }
         else { //no
             NSLog(@"Unselected");
             [sender setImage: [UIImage imageNamed:@"s-red.png"]  forState: UIControlStateNormal];
             sender.selected = YES;
         }
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
  
     }
- (IBAction)inputtT:(UIButton *)sender;{
         if ([sender isSelected]) {
             NSLog(@"Selected");
             [sender setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
             sender.selected = NO;
         }
         else { //no
             NSLog(@"Unselected");
             [sender setImage: [UIImage imageNamed:@"t-red.png"]  forState: UIControlStateNormal];
             sender.selected = YES;
         }
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];

     }
- (IBAction)inputtE:(UIButton *)sender;{
         if ([sender isSelected]) {
             NSLog(@"Selected");
             [sender setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
             sender.selected = NO;
         }
         else { //no
             NSLog(@"Unselected");
             [sender setImage: [UIImage imageNamed:@"e-red.png"]  forState: UIControlStateNormal];
             sender.selected = YES;
         }
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
   
     }
- (IBAction)inputtL:(UIButton *)sender;{
         if ([sender isSelected]) {
             NSLog(@"Selected");
             [sender setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
             sender.selected = NO;
         }
         else { //no
             NSLog(@"Unselected");
             [sender setImage: [UIImage imageNamed:@"L-red.png"]  forState: UIControlStateNormal];
             sender.selected = YES;
         }
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
   
     }

-(void)checkForSequence2{
    if (_inputL.selected) {
        self.L1Second.hidden = false;
        self.L2Second.hidden = false;
        self.L3Second.hidden = false;
    
        [correct3 play];
     
       
    }
}

-(void)checkForSequence3{
    if (_inputE.selected) {
        self.E1Second.hidden = false;
        self.E2Second.hidden = false;
        self.E3Second.hidden = false;
        self.E4Second.hidden = false;
        [correct3 play];
       
       
    }
}

-(void)checkForSequence4{
    if (_inputT.selected) {
        self.T1Second.hidden = false;
        self.T2Second.hidden = false;
        self.T3Second.hidden = false;
        
        [correct3 play];
       
       
    }
}
-(void)checkForSequence5{
    if (_inputS.selected) {
        self.S1Second.hidden = false;
        self.S2Second.hidden = false;
        self.S3Second.hidden = false;
        self.S4Second.hidden = false;
        self.S5Second.hidden = false;
        [correct3 play];
      
        
    }
}
-(void)checkForSequence6{
    if (_inputO.selected) {
        self.O1Second.hidden = false;
        self.O2Second.hidden = false;
        self.O3Second.hidden = false;
        
        [correct3 play];
        
       
    }
}
-(void)checkForSequence7{
    if (_inputR.selected) {
        self.R1Second.hidden = false;
        self.R2Second.hidden = false;
        
        [correct3 play];
       
        
    }
}
-(void)checkForSequence8{
    if (_inputWWrong.selected) {
        [correct3 play];
        lives4 = lives4-1;
        _Livess4 = [NSString stringWithFormat:@"Lives: %i",lives4];
        _LivesLabel4.text = _Livess4;
        [_inputWWrong setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        [_inputWWrong setSelected:NO];
       
    }
}
-(void)checkForSequence9{
    if (_inputAWrong.selected) {
        [correct3 play];
        lives4 = lives4-1;
        _Livess4 = [NSString stringWithFormat:@"Lives: %i",lives4];
        _LivesLabel4.text = _Livess4;
        [_inputAWrong setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputAWrong setSelected:NO];
        
    }
}
-(void)checkForSequence10{
    if (_inputQWrong.selected) {
        [correct3 play];
        lives4 = lives4-1;
        _Livess4 = [NSString stringWithFormat:@"Lives: %i",lives4];
        _LivesLabel4.text = _Livess4;
        [_inputQWrong setImage:[UIImage imageNamed:@"q.png"] forState:UIControlStateNormal];
        [_inputQWrong setSelected:NO];
        
    }
}
-(void)checkForSequence11{
    if (_inputMWrong.selected) {
        [correct3 play];
        lives4 = lives4-1;
        _Livess4 = [NSString stringWithFormat:@"Lives: %i",lives4];
        _LivesLabel4.text = _Livess4;
        [_inputMWrong setImage:[UIImage imageNamed:@"m.png"] forState:UIControlStateNormal];
        [_inputMWrong setSelected:NO];
       
    }
}

 
@end






