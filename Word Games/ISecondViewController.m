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
}

-(void)checkForSequence{
    if (_inputT.selected && _inputR.selected && _inputI.selected && _inputM.selected && _inputS.selected) {
        self.T1.hidden = false;
        self.R1.hidden = false;
        self.I1.hidden = false;
        self.M1.hidden = false;
        self.S1.hidden = false;
        [correct5 play];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputI setImage:[UIImage imageNamed:@"i.png"] forState:UIControlStateNormal];
        [_inputI setSelected:NO];
        [_inputM setImage:[UIImage imageNamed:@"m.png"] forState:UIControlStateNormal];
        [_inputM setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        
        
        
        
    }
}
-(void)checkForSequence2{
    if (_inputM.selected && _inputO.selected && _inputI.selected && _inputS.selected && _inputT.selected) {
        self.M2.hidden = false;
        self.O1.hidden = false;
        self.I3.hidden = false;
        self.S3.hidden = false;
        self.T3.hidden = false;
        [correct5 play];
        [_inputM setImage:[UIImage imageNamed:@"m.png"] forState:UIControlStateNormal];
        [_inputM setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputI setImage:[UIImage imageNamed:@"i.png"] forState:UIControlStateNormal];
        [_inputI setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        
        
        
    }
    }

-(void)checkForSequence3{
    if (_inputO.selected && _inputM.selected && _inputI.selected && _inputT.selected && _inputS.selected) {
        [correct5 play];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputM setImage:[UIImage imageNamed:@"m.png"] forState:UIControlStateNormal];
        [_inputM setSelected:NO];
        [_inputI setImage:[UIImage imageNamed:@"i.png"] forState:UIControlStateNormal];
        [_inputI setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        
        
        
        
    }
}
-(void)checkForSequence4{
    if (_inputR.selected && _inputI.selected && _inputO.selected && _inputT.selected) {
        [correct5 play];
        self.R2.hidden = false;
        self.I5.hidden = false;
        self.O3.hidden = false;
        self.T4.hidden = false;
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputI setImage:[UIImage imageNamed:@"i.png"] forState:UIControlStateNormal];
        [_inputI setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
    }
}
-(void)checkForSequence5{
    if (_inputS.selected && _inputM.selected && _inputI.selected && _inputT.selected) {
        [correct5 play];
        self.S4.hidden = false;
        self.M4.hidden = false;
        self.I4.hidden = false;
        self.T5.hidden = false;
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputM setImage:[UIImage imageNamed:@"m.png"] forState:UIControlStateNormal];
        [_inputM setSelected:NO];
        [_inputI setImage:[UIImage imageNamed:@"i.png"] forState:UIControlStateNormal];
        [_inputI setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
    }
}







@end












