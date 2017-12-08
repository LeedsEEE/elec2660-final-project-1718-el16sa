//
//  EViewController.m
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "EViewController.h"
#import "ESecondViewController.h"
@import MediaPlayer;

@interface EViewController ()

@end
int lives; //Declare an integer called lives to use it later
AVAudioPlayer *correct;

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
    self.NextLevelButton.hidden = false;
    // Originally the images with letters are hidden. They appear when the user chooses the word correctly from the options of inputs given. The button to proceed to the next level is also hidden at first since the user has to input a word correctly first.
    NSURL *CorrectSound = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/correct.wav",[[NSBundle mainBundle] resourcePath]]];
    correct = [[AVAudioPlayer alloc] initWithContentsOfURL:CorrectSound error:nil];
    lives = 4; // lives starts with the value 4
    _Livess = [NSString stringWithFormat:@"Lives: 4"]; // The NSString was declared in the header file and now refering back to it to make it appear in the viewcontroller
    _livesLabel.text = _Livess; // Equating 'livesLabel' the label in the view controller to the value created based on the buttons pressed.
    //https://minerva.leeds.ac.uk/bbcswebdav/pid-5223121-dt-content-rid-9579507_2/courses/201718_27046_ELEC2660/2%20-%20UIFun%283%29.pdf
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
 }
    
    //Reference AVAudioPlayer Lab: https://minerva.leeds.ac.uk/bbcswebdav/pid-5341615-dt-content-rid-9710025_2/courses/201718_27046_ELEC2660/podcasts/Lab%206.mp4
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


-(void)checkForSequence{
    if (_inputR.selected) {
        NSLog(@"pressed");
        self.R1.hidden = false;
        self.R2.hidden = false;
        self.R4.hidden = false;
        [correct play];
      
        
    
    }
}
-(void)checkForSequence2{
    if (_inputA.selected) {
        NSLog(@"pressed");
        self.A1.hidden = false;
        self.A2.hidden = false;
        self.A3.hidden = false;
        self.A4.hidden = false;
         [correct play];
      
      
        
    }

    
}
-(void)checkForSequence3{
    if (_inputW.selected) {
        NSLog(@"pressed");
        self.W2.hidden = false;
        self.W1.hidden = false;
    
        [correct play];
      
    }
}
-(void)checkForSequence4{
    if (_inputT.selected) {
        NSLog(@"pressed");
        self.T3.hidden = false;
        self.T2.hidden = false;
        self.T1.hidden = false;
        [correct play];
        
      
    }
}
-(void)checkForSequence5{
    if (_inputE.selected) {
        NSLog(@"pressed");
        self.E1.hidden = false;
        self.E2.hidden = false;
        self.E3.hidden = false;
        [correct play];
       
        
    
    }
}
-(void)checkForSequence6{
    if (_inputQ.selected) {
        NSLog(@"pressed");
        lives = lives-1;
        _Livess = [NSString stringWithFormat:@"Lives: %i",lives];
        _livesLabel.text = _Livess;
        
        [_inputQ setImage:[UIImage imageNamed:@"q.png"] forState:UIControlStateNormal];
        [_inputQ setSelected:NO];
        
    }
}
-(void)checkForSequence7{
    if (_inputSWrong.selected) {
        NSLog(@"pressed");
        lives = lives-1;
        _Livess = [NSString stringWithFormat:@"Lives: %i",lives];
        _livesLabel.text = _Livess;
        
        [_inputSWrong setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputSWrong setSelected:NO];
        
    }
}
- (IBAction)inputSWrongg:(UIButton *)sender {
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

- (IBAction)inputOWrong:(UIButton *)sender {
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
-(void)checkForSequence8{
    if (_inputOWrong.selected) {
        NSLog(@"pressed");
        lives = lives-1;
        _Livess = [NSString stringWithFormat:@"Lives: %i",lives];
        _livesLabel.text = _Livess;
        
        [_inputOWrong setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputOWrong setSelected:NO];
        
    }
}
-(void)checkForSequence9{
    if (_inputDWrong.selected) {
        NSLog(@"pressed");
        lives = lives-1;
        _Livess = [NSString stringWithFormat:@"Lives: %i",lives];
        _livesLabel.text = _Livess;
        
        [_inputDWrong setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
        [_inputDWrong setSelected:NO];
        
    }
}

-(void)checkForSequence10{
    if (_InputMWrong.selected) {
        NSLog(@"pressed");
        lives = lives-1;
        _Livess = [NSString stringWithFormat:@"Lives: %i",lives];
        _livesLabel.text = _Livess;
        
        [_InputMWrong setImage:[UIImage imageNamed:@"m.png"] forState:UIControlStateNormal];
        [_InputMWrong setSelected:NO];
        
    }
}

- (IBAction)inputMWrong:(UIButton *)sender {
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


- (IBAction)inputDwrong:(UIButton *)sender {
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
