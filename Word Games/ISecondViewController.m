//
//  ISecondViewController.m
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ISecondViewController.h"
@import MediaPlayer;

@interface ISecondViewController ()

@end
int lives6;
AVAudioPlayer *correct5;

@implementation ISecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.T1.hidden = true;
    self.R1.hidden = true;
    self.I1.hidden = true;
    self.S1.hidden = true;
    self.O1.hidden = true;
    self.O2.hidden = true;
    self.M1.hidden = true;
    self.I2.hidden = true;
    self.T2.hidden = true;
    self.S2.hidden = true;
    self.I3.hidden = true;
    self.S3.hidden = true;
    self.S4.hidden = true;
    self.M3.hidden = true;
    self.M2.hidden = true;
    self.M4.hidden = true;
    self.I4.hidden = true;
    self.T3.hidden = true;
    self.T4.hidden = true;
    self.T5.hidden = true;
    self.O3.hidden = true;
    self.I5.hidden = true;
    self.R2.hidden = true;
    NSURL *CorrectSound = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/correct.wav",[[NSBundle mainBundle] resourcePath]]];
    correct5 = [[AVAudioPlayer alloc] initWithContentsOfURL:CorrectSound error:nil];
    lives6 = 2;
    _Livess6 = [NSString stringWithFormat:@"Lives: 2"];
    _LivesLabel6.text = _Livess6;
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

- (IBAction)inputtI:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"unselected");
        [sender setImage:[UIImage imageNamed:@"i.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"selected");
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

- (IBAction)inputtM:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"unselected");
        [sender setImage:[UIImage imageNamed:@"m.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"selected");
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

- (IBAction)inputtO:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"unselected");
        [sender setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"selected");
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

- (IBAction)inputtR:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"unselected");
        [sender setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"selected");
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

- (IBAction)inputtS:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"unselected");
        [sender setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"selected");
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

- (IBAction)inputtT:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"unselected");
        [sender setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"selected");
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

-(void)checkForSequence{
    if (_inputT.selected) {
        self.T1.hidden = false;
        self.T2.hidden = false;
        self.T3.hidden = false;
        self.T4.hidden = false;
        self.T5.hidden = false;
        [correct5 play];
      
        
        
        
        
    }
}
-(void)checkForSequence2{
    if (_inputS.selected) {
        self.S1.hidden = false;
        self.S2.hidden = false;
        self.S3.hidden = false;
        self.S4.hidden = false;
        
        [correct5 play];
      
        
        
        
    }
    }

-(void)checkForSequence3{
    if (_inputR.selected) {
        self.R1.hidden = false;
        self.R2.hidden = false;
        [correct5 play];
       
        
        
        
        
    }
}
-(void)checkForSequence4{
    if (_inputO.selected) {
        [correct5 play];
        self.O1.hidden = false;
        self.O2.hidden = false;
        self.O3.hidden = false;
      
      
    }
}
-(void)checkForSequence5{
    if (_inputM.selected) {
        [correct5 play];
        self.M1.hidden = false;
        self.M2.hidden = false;
        self.M3.hidden = false;
        self.M4.hidden = false;
       
    }
}
-(void)checkForSequence6{
    if (_inputI) {
        [correct5 play];
        self.I1.hidden = false;
        self.I2.hidden = false;
        self.I3.hidden = false;
        self.I4.hidden = false;
        self.I5.hidden = false;
    }


}
-(void)checkForSequence7{
    if (_inputWWrong.selected) {
        
        
        
        [correct5 play];
        lives6 = lives6-1;
        _Livess6 = [NSString stringWithFormat:@"Lives: %i",lives6];
        _LivesLabel6.text = _Livess6;
        
        [_inputWWrong setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        [_inputWWrong setSelected:NO];
        
        
        
    }
}
-(void)checkForSequence8{
    if (_inputFWrong.selected) {
        
        
        
        [correct5 play];
        lives6 = lives6-1;
        _Livess6 = [NSString stringWithFormat:@"Lives: %i",lives6];
        _LivesLabel6.text = _Livess6;
        
        [_inputFWrong setImage:[UIImage imageNamed:@"f.png"] forState:UIControlStateNormal];
        [_inputFWrong setSelected:NO];
        
        
        
    }
}
-(void)checkForSequence9{
    if (_inputDWrong.selected) {
        
        
        
        [correct5 play];
        lives6 = lives6-1;
        _Livess6 = [NSString stringWithFormat:@"Lives: %i",lives6];
        _LivesLabel6.text = _Livess6;
        
        [_inputDWrong setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
        [_inputDWrong setSelected:NO];
        
        
        
    }
}
-(void)checkForSequence10{
    if (_inputAWrong.selected) {
        
        
        
        [correct5 play];
        lives6 = lives6-1;
        _Livess6 = [NSString stringWithFormat:@"Lives: %i",lives6];
        _LivesLabel6.text = _Livess6;
        
        [_inputAWrong setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputAWrong setSelected:NO];
        
        
        
    }
}



- (IBAction)inputtFWrong:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"unselected");
        [sender setImage:[UIImage imageNamed:@"f.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"selected");
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

- (IBAction)inputtWWrong:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"unselected");
        [sender setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"selected");
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

- (IBAction)inputtAWrong:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"unselected");
        [sender setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"selected");
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

- (IBAction)inputtDWrong:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"unselected");
        [sender setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"selected");
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
@end












