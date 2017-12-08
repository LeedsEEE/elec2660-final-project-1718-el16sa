//
//  ESecondViewController.m
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ESecondViewController.h"
#import "GameOverViewController.h"
@import MediaPlayer;

@interface ESecondViewController ()

@end
int lives2;
AVAudioPlayer *correct1;
AVAudioPlayer *wrong2;


@implementation ESecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.O1.hidden = true;
    self.W1.hidden = true;
    self.L1.hidden = true;
    self.L2.hidden = true;
    self.O2.hidden = true;
    self.T1.hidden = true;
    self.T2.hidden = true;
    self.O3.hidden = true;
    self.W2.hidden = true;
    self.W3.hidden = true;
    self.O4.hidden = true;
    self.O5.hidden = true;
    self.R1.hidden = true;
    self.E1.hidden = true;
    self.E2.hidden = true;
    self.BackButton.hidden = false;
    NSURL *CorrectSound = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/correct.wav",[[NSBundle mainBundle] resourcePath]]];
    correct1 = [[AVAudioPlayer alloc] initWithContentsOfURL:CorrectSound error:nil];
    lives2 = 4;
    _Livess2 = [NSString stringWithFormat:@"Lives: 4"];
    _livesLabel2.text = _Livess2;
    
    NSURL *WrongSound2 = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Buzzer.wav",[[NSBundle mainBundle] resourcePath]]];
    wrong2 = [[AVAudioPlayer alloc] initWithContentsOfURL:WrongSound2 error:nil];
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

- (IBAction)inputtW:(UIButton *)sender {
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

- (IBAction)inputtO:(UIButton *)sender {
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

- (IBAction)inputtR:(UIButton *)sender {
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
    if (_inputO.selected) {
        NSLog(@"pressed");
        self.O1.hidden = false;
        self.O2.hidden = false;
        self.O3.hidden = false;
        self.O4.hidden = false;
        self.O5.hidden = false;
        [correct1 play];
       
    
}


}
-(void)checkForSequence2{
    if (_inputL.selected) {
        NSLog(@"pressed");
        self.L1.hidden = false;
        self.L2.hidden = false;
      
        [correct1 play];
     
     
    }
    
    
}
-(void)checkForSequence3{
    if (_inputT.selected) {
        NSLog(@"pressed");
        self.T1.hidden = false;
        self.T2.hidden = false;
        
        [correct1 play];
      
  
    }
    
    
}
-(void)checkForSequence4{
    if (_inputW.selected) {
        NSLog(@"pressed");
        self.W1.hidden = false;
        self.W2.hidden = false;
        self.W3.hidden = false;
        [correct1 play];
    
       
    }
    
    
}
-(void)checkForSequence5{
    if (_inputR.selected) {
        NSLog(@"pressed");
        self.R1.hidden = false;
        [correct1 play];
      
   
    }
    
    
}
-(void)checkForSequence6{
    if (_inputE.selected) {
        self.E1.hidden = false;
        self.E2.hidden = false;
        NSLog(@"pressed");
        [correct1 play];
       
      
    }
    
    
}
-(void)checkForSequence7{
    if (_inputSWrong.selected) {
        NSLog(@"pressed");
        lives2 = lives2-1;
        _Livess2 = [NSString stringWithFormat:@"Lives: %i",lives2];
        _livesLabel2.text = _Livess2;
        
        [wrong2 play];
        [_inputSWrong setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputSWrong setSelected:NO];
        
    }
    
    if (lives2 == 0) {
        [self GameOverES];
    }
}
-(void)checkForSequence8{
    if (_inputAWrong.selected) {
        NSLog(@"pressed");
        
        lives2 = lives2-1;
        _Livess2 = [NSString stringWithFormat:@"Lives: %i",lives2];
        _livesLabel2.text = _Livess2;
        
        [wrong2 play];
        [_inputAWrong setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputAWrong setSelected:NO];
       
    }
    if (lives2 == 0) {
        [self GameOverES];
    }
    
}
-(void)checkForSequence9{
    if (_inputQWrong.selected) {
        NSLog(@"pressed");
        [wrong2 play];
        lives2 = lives2-1;
        _Livess2 = [NSString stringWithFormat:@"Lives: %i",lives2];
        _livesLabel2.text = _Livess2;
        [_inputQWrong setImage:[UIImage imageNamed:@"q.png"] forState:UIControlStateNormal];
        [_inputQWrong setSelected:NO];
        
    }
    if (lives2 == 0) {
        [self GameOverES];
    }
    
    
}
-(void)checkForSequence10{
    if (_inputIWrong.selected) {
        NSLog(@"pressed");
        [wrong2 play];
        lives2 = lives2-1;
        _Livess2 = [NSString stringWithFormat:@"Lives: %i",lives2];
        _livesLabel2.text = _Livess2;
        [_inputIWrong setImage:[UIImage imageNamed:@"i.png"] forState:UIControlStateNormal];
        [_inputIWrong setSelected:NO];
        
    }
    if (lives2 == 0) {
        [self GameOverES];
    }
    
    
}


- (IBAction)inputtSWrong:(UIButton *)sender {
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


-(void)GameOverES{
    GameOverViewController *ESecondViewController;
    ESecondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"GameOverViewController"];
    [self presentViewController:ESecondViewController animated:YES completion:nil];
}


@end




