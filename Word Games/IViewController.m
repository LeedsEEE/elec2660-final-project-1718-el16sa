//
//  IViewController.m
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "IViewController.h"
#import "ISecondViewController.h"

@interface IViewController ()

@end

@implementation IViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.T1.hidden = true;
    self.E1.hidden = true;
    self.S1.hidden = true;
    self.L1.hidden = true;
    self.A1.hidden = true;
    self.L2.hidden = true;
    self.A2.hidden = true;
    self.T2.hidden = true;
    self.T3.hidden = true;
    self.E2.hidden = true;
    self.T4.hidden = true;
    self.A3.hidden = true;
    self.S2.hidden = true;
    self.T5.hidden = true;
    self.E3.hidden = true;
    self.T6.hidden = true;
    self.E4.hidden = true;
    self.A4.hidden = true;
    self.L3.hidden = true;
    self.S3.hidden = true;
    self.A5.hidden = true;
    self.T7.hidden = true;
    self.E5.hidden = true;
    self.NextLevellButton.hidden = true;
    self.L4.hidden = true;
    
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
        [sender setImage:[UIImage imageNamed:@"e_empty.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"e_red.png"]  forState: UIControlStateNormal];
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
}
- (IBAction)inputtA:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"Selected");
        [sender setImage:[UIImage imageNamed:@"a_empty.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"a_red.png"]  forState: UIControlStateNormal];
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
}
- (IBAction)inputtL:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"Selected");
        [sender setImage:[UIImage imageNamed:@"l_empty.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"l_red.png"]  forState: UIControlStateNormal];
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
}
- (IBAction)inputtT:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"Selected");
        [sender setImage:[UIImage imageNamed:@"t_empty.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"t_red.png"]  forState: UIControlStateNormal];
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
}
- (IBAction)inputtS:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"Selected");
        [sender setImage:[UIImage imageNamed:@"s_empty.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"s_red.png"]  forState: UIControlStateNormal];
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
}
- (IBAction)inputtT2:(UIButton *)sender{
    if ([sender isSelected]) {
        NSLog(@"Selected");
        [sender setImage:[UIImage imageNamed:@"t_empty.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"Unselected");
        [sender setImage: [UIImage imageNamed:@"t_red.png"]  forState: UIControlStateNormal];
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
}



-(void)checkForSequence{
    if (_inputT.selected && _inputE.selected && _inputS.selected && _inputL.selected && _inputA) {
        self.T1.hidden = false;
        self.E1.hidden = false;
        self.S1.hidden = false;
        self.L1.hidden = false;
        self.A1.hidden = false;
        [_inputT setImage:[UIImage imageNamed:@"r_empty.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"o_empty.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"f_empty.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputL setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
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
    if (_T7.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    
}
-(void)checkForSequence2{
    if (_inputL.selected && _inputA.selected && _inputT.selected && _inputT.selected && _inputE) {
        self.L2.hidden = false;
        self.A2.hidden = false;
        self.T2.hidden = false;
        self.T3.hidden = false;
        self.E2.hidden = false;
        [_inputL setImage:[UIImage imageNamed:@"r_empty.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"o_empty.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"f_empty.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
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
    if (_T7.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    
    
}
-(void)checkForSequence3{
    if (_inputT.selected && _inputA.selected && _inputS.selected && _inputT.selected && _inputE) {
        self.T4.hidden = false;
        self.A3.hidden = false;
        self.S2.hidden = false;
        self.T5.hidden = false;
        self.E3.hidden = false;
        [_inputT setImage:[UIImage imageNamed:@"r_empty.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"o_empty.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"f_empty.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
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
    if (_T7.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    
    
}
-(void)checkForSequence4{
    if (_inputS.selected && _inputT.selected && _inputE.selected && _inputA.selected && _inputL) {
        self.S2.hidden = false;
        self.T6.hidden = false;
        self.E4.hidden = false;
        self.A4.hidden = false;
        self.L3.hidden = false;
        [_inputS setImage:[UIImage imageNamed:@"r_empty.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"o_empty.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"f_empty.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputL setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
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
    if (_T7.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    
    
}
-(void)checkForSequence5{
    if (_inputS.selected && _inputL.selected && _inputA.selected && _inputT.selected && _inputE) {
        self.S3.hidden = false;
        self.L4.hidden = false;
        self.A5.hidden = false;
        self.T7.hidden = false;
        self.E5.hidden = false;
        [_inputS setImage:[UIImage imageNamed:@"r_empty.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputL setImage:[UIImage imageNamed:@"o_empty.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"f_empty.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
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
    if (_T7.hidden == false) {
        self.NextLevellButton.hidden = false;
    }
    
    
}
-(void)checkForSequence6{
    if (_inputL.selected && _inputE.selected && _inputA.selected && _inputS.selected && _inputT) {
       
        [_inputL setImage:[UIImage imageNamed:@"r_empty.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"o_empty.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"f_empty.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        
        
    }
   
    
    
}
-(void)checkForSequence7{
    if (_inputS.selected && _inputT.selected && _inputA.selected && _inputT.selected && _inputE) {
        
        [_inputS setImage:[UIImage imageNamed:@"r_empty.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"o_empty.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"f_empty.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        
        
    }
    
   
    
    
}
-(void)checkForSequence8{
    if (_inputT.selected && _inputA.selected && _inputL.selected && _inputE.selected && _inputS) {
        
        [_inputT setImage:[UIImage imageNamed:@"r_empty.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"o_empty.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputL setImage:[UIImage imageNamed:@"f_empty.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"d_empty.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        
        
    }
    
    
}

- (IBAction)NextLevelButtonnn:(UIButton *)sender {
    if (sender.selected) {
        [self NextLevel];
    }
    
}
-(void)NextLevel{
    ISecondViewController *IViewController;
    IViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ISecondViewController"];
    [self presentViewController:IViewController animated:YES completion:nil];
}


@end





