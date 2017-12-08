//
//  MViewController.m
//  Word Games
//
//  Created by Salah El Abd on 11/23/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MViewController.h"
#import "MSecondViewController.h"
#import "GameOverViewController.h"
@import MediaPlayer;
@interface MViewController ()

@end
int lives3;
AVAudioPlayer *correct2;
AVAudioPlayer *wrong3;


@implementation MViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.F1.hidden = true;
    self.O1.hidden = true;
    self.R1.hidden = true;
    self.D1.hidden = true;
    self.F2.hidden = true;
    self.A1.hidden = true;
    self.R2.hidden = true;
    self.E1.hidden = true;
    self.D2.hidden = true;
    self.E2.hidden = true;
    self.A2.hidden = true;
    self.F3.hidden = true;
    self.A3.hidden = true;
    self.F4.hidden = true;
    self.R3.hidden = true;
    self.O2.hidden = true;
    self.R4.hidden = true;
    self.O3.hidden = true;
    self.D3.hidden = true;
    self.E3.hidden = true;
    self.NextLevelButton.hidden = false;
    NSURL *CorrectSound = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/correct.wav",[[NSBundle mainBundle] resourcePath]]];
    correct2 = [[AVAudioPlayer alloc] initWithContentsOfURL:CorrectSound error:nil];
    lives3 = 3;
    _Livess3 = [NSString stringWithFormat:@"Lives: 3"];
    _LivesLabel3.text = _Livess3;
    
    NSURL *WrongSound3 = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Buzzer.wav",[[NSBundle mainBundle] resourcePath]]];
    wrong3 = [[AVAudioPlayer alloc] initWithContentsOfURL:WrongSound3 error:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)inputt1:(UIButton *)sender;{
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
- (IBAction)inputt2:(UIButton *)sender;{
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
- (IBAction)inputt3:(UIButton *)sender;{
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
- (IBAction)inputt4:(UIButton *)sender;{
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
- (IBAction)inputt5:(UIButton *)sender;{
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
- (IBAction)inputt6:(UIButton *)sender;{
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


-(void)checkForSequence{
    if (_input1.selected) {
        self.R1.hidden = false;
        self.R2.hidden = false;
        self.R3.hidden = false;
        self.R4.hidden = false;
        [correct2 play];
       
      
       
        
        
    }
    
    
}
 
-(void)checkForSequence2{
    if (_input2.selected) {
        NSLog(@"pressed");
        self.E1.hidden = false;
        self.E2.hidden = false;
        self.E3.hidden = false;
        
        [correct2 play];
      
     
        
    }
    
}
-(void)checkForSequence3{
    if (_input3.selected) {
        NSLog(@"pressed");
        self.O1.hidden = false;
        self.O2.hidden = false;
        self.O3.hidden = false;
        [correct2 play];
        
        
    }
    
}
 -(void)checkForSequence4{
    if (_input4.selected) {
        NSLog(@"pressed");
        self.A1.hidden = false;
        self.A2.hidden = false;
        self.A3.hidden = false;
     
        [correct2 play];
    
    }
     
}
-(void)checkForSequence5{
    if (_input5.selected) {
        NSLog(@"pressed");
        self.D1.hidden = false;
        self.D2.hidden = false;
        self.D3.hidden = false;
       
        [correct2 play];
      
    
       
    }
   
    }


-(void)checkForSequence6{
    if (_input6.selected) {
[correct2 play];
        self.F1.hidden = false;
        self.F2.hidden = false;
        self.F3.hidden = false;
        self.F4.hidden = false;
       
        




    }
}
-(void)checkForSequence7{
    if (_inputQWrong.selected) {
        
        [wrong3 play];
        lives3 = lives3-1;
        _Livess3 = [NSString stringWithFormat:@"Lives: %i",lives3];
        _LivesLabel3.text = _Livess3;
        [_inputQWrong setImage:[UIImage imageNamed:@"q.png"] forState:UIControlStateNormal];
        [_inputQWrong setSelected:NO];
       
        
        
        
        
    }
    if (lives3 == 0) {
        [self GameOverM];
    }
}
-(void)checkForSequence8{
    if (_inputTWrong.selected) {
        
        [wrong3 play];
        lives3 = lives3-1;
        _Livess3 = [NSString stringWithFormat:@"Lives: %i",lives3];
        _LivesLabel3.text = _Livess3;
        [_inputTWrong setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputTWrong setSelected:NO];
        
        
        
        
        
    }
    if (lives3 == 0) {
        [self GameOverM];
    }
}
-(void)checkForSequence9{
    if (_inputMWrong.selected) {
        
        [wrong3 play];
        lives3 = lives3-1;
        _Livess3 = [NSString stringWithFormat:@"Lives: %i",lives3];
        _LivesLabel3.text = _Livess3;
        [_inputMWrong setImage:[UIImage imageNamed:@"m.png"] forState:UIControlStateNormal];
        [_inputMWrong setSelected:NO];
       
        
        
        
        
    }
    if (lives3 == 0) {
        [self GameOverM];
    }
}
-(void)checkForSequence10{
    if (_inputIWrong.selected) {
        
        [wrong3 play];
        lives3 = lives3-1;
        _Livess3 = [NSString stringWithFormat:@"Lives: %i",lives3];
        _LivesLabel3.text = _Livess3;
        [_inputIWrong setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputIWrong setSelected:NO];
        
        
        
        
        
    }
    if (lives3 == 0) {
        [self GameOverM];
    }
}




- (IBAction)NextLevelButtonn:(UIButton *)sender {
    if ([sender isSelected]){
        
        [self NextLevel];
    }
}
-(void)NextLevel{
    MSecondViewController *MViewController;
    MViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MSecondViewController"];
    [self presentViewController:MViewController animated:YES completion:nil];
    
    
}

- (IBAction)inputtTWrong:(UIButton *)sender {
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

- (IBAction)inputtQWrong:(UIButton *)sender {
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

- (IBAction)inputtIWrong:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"Selected");
        [sender setImage:[UIImage imageNamed:@"i.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"i-red.png"]  forState: UIControlStateNormal];
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
-(void)GameOverM{
    GameOverViewController *MViewController;
    MViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"GameOverViewController"];
    [self presentViewController:MViewController animated:YES completion:nil];
}
    @end
    

