//
//  IViewController.m
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "IViewController.h"
#import "ISecondViewController.h"
@import MediaPlayer;

@interface IViewController ()

@end
AVAudioPlayer *correct4;

@implementation IViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.T1.hidden = true;
    self.E1.hidden = true;
    self.S1.hidden = true;
    self.L1.hidden = true;
    self.A1.hidden = true;
    self.Tn.hidden = true;
    self.A2.hidden = true;
    self.T2.hidden = true;
    self.T3.hidden = true;
    self.E2.hidden = true;
    self.T4.hidden = true;
    self.A3.hidden = true;
    self.R3.hidden = true;
    self.S5.hidden = true;
    self.E3.hidden = true;
    self.E4.hidden = true;
    self.A4.hidden = true;
    self.L3.hidden = true;
    self.S3.hidden = true;
    self.S4.hidden = true;
    self.L4.hidden = true;
    self.L5.hidden = true;
    self.A5.hidden = true;
    self.E5.hidden = true;
    self.R5.hidden = true;
    self.R4.hidden = true;
    self.NextLevellButton.hidden = true;
    self.L4.hidden = true;
    NSURL *CorrectSound = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/correct.wav",[[NSBundle mainBundle] resourcePath]]];
    correct4 = [[AVAudioPlayer alloc] initWithContentsOfURL:CorrectSound error:nil];

    
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

- (IBAction)inputtE:(UIButton *)sender {
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
    [self checkForSequence];
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
   
   // [self checkForSequence6];
  //  [self checkForSequence7];
   // [self checkForSequence8];
}
- (IBAction)inputtA:(UIButton *)sender {
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
    [self checkForSequence];
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
   
 //   [self checkForSequence6];
 //   [self checkForSequence7];
  //  [self checkForSequence8];
}
- (IBAction)inputtL:(UIButton *)sender {
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
    [self checkForSequence];
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
   
  //  [self checkForSequence6];
  //  [self checkForSequence7];
  //  [self checkForSequence8];
}
- (IBAction)inputtT:(UIButton *)sender {
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
    [self checkForSequence];
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    //[self checkForSequence6];
   // [self checkForSequence7];
    //[self checkForSequence8];
}
- (IBAction)inputtS:(UIButton *)sender {
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
    [self checkForSequence];
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
  //  [self checkForSequence6];
  //  [self checkForSequence7];
  //  [self checkForSequence8];
}
- (IBAction)inputtR:(UIButton *)sender{
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
    [self checkForSequence];
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
 //   [self checkForSequence6];
  //  [self checkForSequence7];
 //   [self checkForSequence8];
}



-(void)checkForSequence{
    if (_inputT.selected && _inputA.selected && _inputL.selected && _inputE.selected && _inputS.selected) {
        self.T1.hidden = false;
        self.E1.hidden = false;
        self.S1.hidden = false;
        self.L1.hidden = false;
        self.A1.hidden = false;
        [correct4 play];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        
        
    }
    if (_T1.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    if (_T2.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    if (_T4.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    if (_L3.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    
}
-(void)checkForSequence2{
    if (_inputL.selected && _inputA.selected && _inputS.selected && _inputE.selected && _inputR.selected) {
        self.S5.hidden = false;
        self.A5.hidden = false;
        self.R5.hidden = false;
        self.L4.hidden = false;
        self.E4.hidden = false;
        [correct4 play];
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        
        
    }
    if (_T1.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    if (_T2.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    if (_T4.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    if (_L3.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
  
    
    
}
-(void)checkForSequence3{
    if (_inputA.selected && _inputL.selected && _inputE.selected && _inputR.selected && _inputT.selected) {
        self.A2.hidden = false;
        self.L5.hidden = false;
        self.R3.hidden = false;
        self.T2.hidden = false;
        self.E3.hidden = false;
        [correct4 play];
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        
        
    }
    if (_T1.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    if (_T2.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    if (_T4.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    if (_L3.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
 
    
}
-(void)checkForSequence4{
    if (_inputR.selected && _inputA.selected && _inputT.selected && _inputE.selected && _inputS.selected) {
       
       
        self.Tn.hidden = false;
        self.E5.hidden = false;
        self.S3.hidden = false;
        self.A3.hidden = false;
        self.R4.hidden = false;
        
         [correct4 play];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        
        
    }
    
    if (_T1.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    if (_T2.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    if (_T4.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    if (_L3.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
  
    
}


- (IBAction)NextLevelButtonnn:(UIButton *)sender {
    if ([sender isSelected]) {
        [self NextLevel];
    }
    
}
-(void)NextLevel{
    ISecondViewController *IViewController;
    IViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ISecondViewController"];
    [self presentViewController:IViewController animated:YES completion:nil];
}


@end





