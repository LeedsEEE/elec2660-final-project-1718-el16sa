//
//  EViewController.m
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "EViewController.h"
#import "ESecondViewController.h"

@interface EViewController ()

@end

@implementation EViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.R1.hidden = true;
    self.A1.hidden = true;
    self.T1.hidden = true;
    self.R2.hidden = true;
    self.A2.hidden = true;
    self.W1.hidden = true;
    self.E1.hidden = true;
    self.T2.hidden = true;
    self.T3.hidden = true;
    self.E2.hidden = true;
    self.A3.hidden = true;
    self.R4.hidden = true;
    self.E3.hidden = true;
    self.W2.hidden = true;
    self.A4.hidden = true;
    self.NextLevelButton.hidden = true;
    // Originally the images with letters are hidden. They appear when the user chooses the word correctly from the options of inputs given. The button to proceed to the next level is also hidden at first since the user has to input a word correctly first.
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

- (IBAction)inputtQ:(UIButton *)sender { // The action that i declared in the header file is imported into the main file to be able to use it.
    if ([sender isSelected]) { // An if statement is used to place a condition if the button is selected.
        NSLog(@"Unselected"); // The NSLOG function does not affect the functionality. It displays the value "selected" in the built in log in xcode so observe whether it actually works.
        [sender setImage:[UIImage imageNamed:@"q.png"] forState:UIControlStateNormal];
        sender.selected = NO;// if user did not select button, send to NSLog "Unselected" and keep selected image.
    }
    else { //no // if user did select button change image to the other selected image.
        NSLog(@"Selected");
        [sender setImage: [UIImage imageNamed:@"q-red.png"]  forState: UIControlStateNormal];
        sender.selected = YES;
} //Reference AVAudioPlayer Lab: https://minerva.leeds.ac.uk/bbcswebdav/pid-5341615-dt-content-rid-9710025_2/courses/201718_27046_ELEC2660/podcasts/Lab%206.mp4
    [self checkForSequence];
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
}
- (IBAction)inputtW:(UIButton *)sender {
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
}
- (IBAction)inputtE:(UIButton *)sender {
    if ([sender isSelected]) {
        NSLog(@"unselected");
        [sender setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        sender.selected = NO;
    }
    else { //no
        NSLog(@"selected");
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

}


-(void)checkForSequence{
    if (_inputR.selected && _inputA.selected && _inputT.selected) {
        NSLog(@"pressed");
        self.R1.hidden = false;
        self.A1.hidden = false;
        self.T1.hidden = false;
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        
    }
    if (_R1.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_R2.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_W2.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_T3.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_E3.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
}
-(void)checkForSequence2{
    if (_inputR.selected && _inputA.selected && _inputW.selected) {
        NSLog(@"pressed");
        self.R2.hidden = false;
        self.A2.hidden = false;
        self.W1.hidden = false;
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputW setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        [_inputW setSelected:NO];
        
    }
    if (_R1.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_R2.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_W2.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_T3.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_E3.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
}
-(void)checkForSequence3{
    if (_inputW.selected && _inputE.selected && _inputT.selected) {
        NSLog(@"pressed");
        self.W2.hidden = false;
        self.E1.hidden = false;
        self.T2.hidden = false;
        [_inputW setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        [_inputW setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        
    }
    if (_R1.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_R2.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_W2.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_T3.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_E3.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
}
-(void)checkForSequence4{
    if (_inputT.selected && _inputE.selected && _inputA.selected) {
        NSLog(@"pressed");
        self.T3.hidden = false;
        self.E2.hidden = false;
        self.A3.hidden = false;
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        
    }
    if (_R1.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_R2.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_W2.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_T3.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_E3.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
}
-(void)checkForSequence5{
    if (_inputA.selected && _inputR.selected && _inputE.selected) {
        NSLog(@"pressed");
        self.A4.hidden = false;
        self.R4.hidden = false;
        self.E3.hidden = false;
        [_inputA setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        
    }
    if (_R1.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_R2.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_W2.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_T3.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
    if (_E3.hidden == false) {
        self.NextLevelButton.hidden = false;
    }
}
-(void)checkForSequence6{
    if (_inputA.selected && _inputW.selected && _inputE.selected) {
        NSLog(@"pressed");
        [_inputA setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputW setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        [_inputW setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        
    }
}
-(void)checkForSequence7{
    if (_inputE.selected && _inputA.selected && _inputR.selected) {
        NSLog(@"pressed");
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        
    }
}
-(void)checkForSequence8{
    if (_inputT.selected && _inputA.selected && _inputR.selected) {
        NSLog(@"pressed");
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        
    }
}
-(void)checkForSequence9{
    if (_inputW.selected && _inputA.selected && _inputR.selected) {
        NSLog(@"pressed");
        [_inputW setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        [_inputW setSelected:NO];
        [_inputA setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
        [_inputA setSelected:NO];
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        
    }
}

- (IBAction)NextLevelButtonn:(UIButton *)sender {
    if ([sender isSelected]) {
        [self NextLevell];
    }
    
}
-(void)NextLevell{
    ESecondViewController *EViewController;
    EViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ESecondViewController"];
    [self presentViewController:EViewController animated:YES completion:nil];
}

@end
