//
//  MViewController.m
//  Word Games
//
//  Created by Salah El Abd on 11/23/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MViewController.h"
#import "MSecondViewController.h"
@import MediaPlayer;
@interface MViewController ()

@end
AVAudioPlayer *correct2;


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
    self.NextLevelButton.hidden = true;
    NSURL *CorrectSound = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/correct.wav",[[NSBundle mainBundle] resourcePath]]];
    correct2 = [[AVAudioPlayer alloc] initWithContentsOfURL:CorrectSound error:nil];
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
    if (_input6.selected && _input3.selected && _input1.selected && _input5.selected) {
        self.F1.hidden = false;
        self.O1.hidden = false;
        self.R1.hidden = false;
        self.D1.hidden = false;
        [correct2 play];
        [_input6 setImage:[UIImage imageNamed:@"f.png"] forState:UIControlStateNormal];
        [_input6 setSelected:NO];
        [_input3 setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_input3 setSelected:NO];
        [_input1 setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_input1 setSelected:NO];
        [_input5 setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
        [_input5 setSelected:NO];
        
        
    }
    
    
}
 
-(void)checkForSequence2{
    if (_input6.selected && _input4.selected && _input1.selected && _input2.selected) {
        NSLog(@"pressed");
        self.F2.hidden = false;
        self.A1.hidden = false;
        self.R2.hidden = false;
        self.E1.hidden = false;
        [correct2 play];
        [_input1 setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_input1 setSelected:NO];
        [_input4 setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_input4 setSelected:NO];
        [_input6 setImage:[UIImage imageNamed:@"f.png"] forState:UIControlStateNormal];
        [_input6 setSelected:NO];
        [_input2 setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_input2 setSelected:NO];
        
    }
    
}
-(void)checkForSequence3{
    if (_input5.selected && _input2.selected && _input4.selected && _input6.selected) {
        NSLog(@"pressed");
        self.D2.hidden = false;
        self.E2.hidden = false;
        self.A2.hidden = false;
        self.F3.hidden = false;
        [correct2 play];
        [_input5 setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
        [_input5 setSelected:NO];
        [_input2 setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_input2 setSelected:NO];
        [_input4 setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_input4 setSelected:NO];
        [_input6 setImage:[UIImage imageNamed:@"f.png"] forState:UIControlStateNormal];
        [_input6 setSelected:NO];
    }
    
}
 -(void)checkForSequence4{
    if (_input4.selected && _input6.selected && _input1.selected && _input3.selected) {
        NSLog(@"pressed");
        self.A3.hidden = false;
        self.F4.hidden = false;
        self.R3.hidden = false;
        self.O2.hidden = false;
        [correct2 play];
        [_input4 setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_input4 setSelected:NO];
        [_input6 setImage:[UIImage imageNamed:@"f.png"] forState:UIControlStateNormal];
        [_input6 setSelected:NO];
        [_input1 setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_input1 setSelected:NO];
        [_input3 setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_input3 setSelected:NO];
    }
     
}
-(void)checkForSequence5{
    if (_input1.selected && _input3.selected && _input5.selected && _input2.selected) {
        NSLog(@"pressed");
        self.R4.hidden = false;
        self.O3.hidden = false;
        self.D3.hidden = false;
        self.E3.hidden = false;
        [correct2 play];
        [_input1 setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_input1 setSelected:NO];
        [_input3 setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_input3 setSelected:NO];
        [_input5 setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
        [_input5 setSelected:NO];
        [_input2 setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_input2 setSelected:NO];
    }
   if (_F1.hidden == false) {
       self.NextLevelButton.hidden = false; }
       if (_F2.hidden == false) {
           self.NextLevelButton.hidden = false; }
           if (_F3.hidden == false) {
               self.NextLevelButton.hidden = false; }
               if (_F4.hidden == false) {
                   self.NextLevelButton.hidden = false; }
                   if (_D3.hidden == false) {
                       self.NextLevelButton.hidden = false; }
    }


-(void)checkForSequence6{
    if (_input5.selected && _input2.selected && _input4.selected && _input1.selected) {
[correct2 play];

        [_input5 setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
        [_input5 setSelected:NO];
        [_input2 setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_input2 setSelected:NO];
        [_input4 setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_input4 setSelected:NO];
        [_input1 setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_input1 setSelected:NO];




    }
}
-(void)checkForSequence7{
    if (_input1.selected && _input2.selected && _input4.selected && _input5.selected) {
        
        [correct2 play];
        [_input1 setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_input1 setSelected:NO];
        [_input2 setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_input2 setSelected:NO];
        [_input4 setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_input4 setSelected:NO];
        [_input5 setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
        [_input5 setSelected:NO];
        
        
        
        
    }
}
-(void)checkForSequence8{
    if (_input5.selected && _input4.selected && _input1.selected && _input2.selected) {
        
        [correct2 play];
        [_input5 setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
        [_input5 setSelected:NO];
        [_input4 setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_input4 setSelected:NO];
        [_input1 setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_input1 setSelected:NO];
        [_input2 setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_input2 setSelected:NO];
        
        
        
        
    }
}
-(void)checkForSequence9{
    if (_input6.selected && _input2.selected && _input4.selected && _input1.selected) {
        
        [correct2 play];
        [_input6 setImage:[UIImage imageNamed:@"f.png"] forState:UIControlStateNormal];
        [_input6 setSelected:NO];
        [_input2 setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_input2 setSelected:NO];
        [_input4 setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_input4 setSelected:NO];
        [_input1 setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_input1 setSelected:NO];
        
        
        
        
    }
}
-(void)checkForSequence10{
    if (_input1.selected && _input3.selected && _input4.selected && _input5.selected) {
        
        [correct2 play];
        [_input1 setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_input1 setSelected:NO];
        [_input3 setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_input3 setSelected:NO];
        [_input4 setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_input4 setSelected:NO];
        [_input5 setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
        [_input5 setSelected:NO];
        
        
        
        
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

    @end
    

