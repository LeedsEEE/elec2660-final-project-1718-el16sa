//
//  IViewController.m
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "IViewController.h"
#import "ISecondViewController.h"
#import "GameOverViewController.h"
@import MediaPlayer;

@interface IViewController ()

@end
int lives5;
AVAudioPlayer *correct4;
AVAudioPlayer *wrong5;

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
    self.NextLevellButton.hidden = false;
    self.L4.hidden = true;
    NSURL *CorrectSound = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/correct.wav",[[NSBundle mainBundle] resourcePath]]];
    correct4 = [[AVAudioPlayer alloc] initWithContentsOfURL:CorrectSound error:nil];
    lives5 = 2;
    _Livess5 = [NSString stringWithFormat:@"Lives: 2"];
    _LivesLabel5.text = _Livess5;
    
    NSURL *WrongSound5 = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Buzzer.wav",[[NSBundle mainBundle] resourcePath]]];
    wrong5 = [[AVAudioPlayer alloc] initWithContentsOfURL:WrongSound5 error:nil];

    
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
   [self checkForSequence5];
    [self checkForSequence6];
   [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
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
   [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
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
   [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
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
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
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
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
}
- (IBAction)inputtR:(UIButton *)sender{
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
    [self checkForSequence];
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
}



-(void)checkForSequence{
    if (_inputT.selected) {
        self.T1.hidden = false;
        self.T2.hidden = false;
        self.T3.hidden = false;
        self.T4.hidden = false;
        self.Tn.hidden = false;
        [correct4 play];
    
       
        
        
    }
 
    
}
-(void)checkForSequence2{
    if (_inputR.selected) {
        self.R3.hidden = false;
        self.R4.hidden = false;
        self.R5.hidden = false;
        
        [correct4 play];
        
     
        
        
        
    }
   
    }
  
    
    

-(void)checkForSequence3{
    if (_inputS.selected) {
        self.S1.hidden = false;
        self.S3.hidden = false;
        self.S4.hidden = false;
        self.S5.hidden = false;
     
        [correct4 play];
      
    
        
        
    }
 
    }
 
    

-(void)checkForSequence4{
    if (_inputE.selected) {
       
       
        self.E1.hidden = false;
        self.E2.hidden = false;
        self.E3.hidden = false;
        self.E4.hidden = false;
        self.E5.hidden = false;
        
         [correct4 play];

    
      
        
        
    }
    
   
    }
  
-(void)checkForSequence5{
    if (_inputA.selected) {
        
        
        self.A1.hidden = false;
        self.A2.hidden = false;
        self.A3.hidden = false;
        self.A4.hidden = false;
        self.A5.hidden = false;
        
        [correct4 play];
        
     
        
        
        
    }
    
    
}
-(void)checkForSequence6{
    if (_inputL.selected) {
        
        
        self.L1.hidden = false;
        self.L3.hidden = false;
        self.L4.hidden = false;
        self.L5.hidden = false;
      
        
        [correct4 play];
        
       
        
        
        
    }
}

-(void)checkForSequence7{
    if (_inputMWrong.selected) {
        
        
        
        [wrong5 play];
        lives5 = lives5-1;
        _Livess5 = [NSString stringWithFormat:@"Lives: %i",lives5];
        _LivesLabel5.text = _Livess5;
        
        [_inputMWrong setImage:[UIImage imageNamed:@"m.png"] forState:UIControlStateNormal];
        [_inputMWrong setSelected:NO];
        
        
        
    }
    if (lives5 == 0) {
        [self GameOver2];
    }
}
-(void)checkForSequence8{
    if (_inputFWrong.selected) {
        
        
        
        [wrong5 play];
        lives5 = lives5-1;
        _Livess5 = [NSString stringWithFormat:@"Lives: %i",lives5];
        _LivesLabel5.text = _Livess5;
        [_inputFWrong setImage:[UIImage imageNamed:@"f.png"] forState:UIControlStateNormal];
        [_inputFWrong setSelected:NO];
        
        
        
    }
    if (lives5 == 0) {
        [self GameOver2];
    }
}
-(void)checkForSequence9{
    if (_inputDWrong.selected) {
        
        lives5 = lives5-1;
        _Livess5 = [NSString stringWithFormat:@"Lives: %i",lives5];
        _LivesLabel5.text = _Livess5;
        
        [wrong5 play];
        
        [_inputDWrong setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
        [_inputDWrong setSelected:NO];
        
        
        
    }
    if (lives5 == 0) {
        [self GameOver2];
    }
}
-(void)checkForSequence10{
    if (_inputWWrong.selected) {
        
        lives5 = lives5-1;
        _Livess5 = [NSString stringWithFormat:@"Lives: %i",lives5];
        _LivesLabel5.text = _Livess5;
        
        [wrong5 play];
        
        [_inputWWrong setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        [_inputWWrong setSelected:NO];
        
        
        
    }
    if (lives5 == 0) {
        [self GameOver2];
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


- (IBAction)inputtFWrong:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"Selected");
        [sender setImage:[UIImage imageNamed:@"f.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"f-red.png"]  forState: UIControlStateNormal];
        sender.selected = YES;
    }
    [self checkForSequence];
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
     [self checkForSequence6];
      [self checkForSequence7];
     [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
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
    [self checkForSequence];
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
   [self checkForSequence5];
     [self checkForSequence6];
      [self checkForSequence7];
     [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
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
    [self checkForSequence];
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
     [self checkForSequence6];
      [self checkForSequence7];
     [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
}

- (IBAction)inputtDWrong:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"Selected");
        [sender setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"d-red.png"]  forState: UIControlStateNormal];
        sender.selected = YES;
    }
    [self checkForSequence];
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
     [self checkForSequence6];
      [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
}

-(void)GameOver2{
    GameOverViewController *IViewController;
    IViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"GameOverViewController"];
    [self presentViewController:IViewController animated:YES completion:nil];
    
}

@end





