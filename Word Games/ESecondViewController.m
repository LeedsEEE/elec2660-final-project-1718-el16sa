//
//  ESecondViewController.m
//  Word Games
//
//  Created by Salah El Abd on 12/2/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ESecondViewController.h"

@interface ESecondViewController ()

@end

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
    if (_inputO.selected && _inputW.selected && _inputL.selected) {
        NSLog(@"pressed");
        self.O1.hidden = false;
        self.W1.hidden = false;
        self.L1.hidden = false;
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputW setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        [_inputW setSelected:NO];
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
}


}
-(void)checkForSequence2{
    if (_inputL.selected && _inputO.selected && _inputT.selected) {
        NSLog(@"pressed");
        self.L2.hidden = false;
        self.O2.hidden = false;
        self.T1.hidden = false;
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
    }
    
    
}
-(void)checkForSequence3{
    if (_inputT.selected && _inputO.selected && _inputW.selected) {
        NSLog(@"pressed");
        self.T2.hidden = false;
        self.O3.hidden = false;
        self.W2.hidden = false;
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputW setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        [_inputW setSelected:NO];
    }
    
    
}
-(void)checkForSequence4{
    if (_inputW.selected && _inputO.selected && _inputE.selected) {
        NSLog(@"pressed");
        self.W3.hidden = false;
        self.O4.hidden = false;
        self.E1.hidden = false;
        [_inputW setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        [_inputW setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
    }
    
    
}
-(void)checkForSequence5{
    if (_inputO.selected && _inputR.selected && _inputE.selected) {
        NSLog(@"pressed");
        self.O5.hidden = false;
        self.R1.hidden = false;
        self.E2.hidden = false;
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
    }
    
    
}
-(void)checkForSequence6{
    if (_inputL.selected && _inputE.selected && _inputT.selected) {
        NSLog(@"pressed");
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
    }
    
    
}
-(void)checkForSequence7{
    if (_inputR.selected && _inputO.selected && _inputT.selected) {
        NSLog(@"pressed");
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
    }
    
    
}
-(void)checkForSequence8{
    if (_inputR.selected && _inputO.selected && _inputW.selected) {
        NSLog(@"pressed");
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputW setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        [_inputW setSelected:NO];
    }
    
    
}
-(void)checkForSequence9{
    if (_inputT.selected && _inputO.selected && _inputE.selected) {
        NSLog(@"pressed");
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
    }
    
    
}
-(void)checkForSequence10{
    if (_inputW.selected && _inputE.selected && _inputT.selected) {
        NSLog(@"pressed");
        [_inputW setImage:[UIImage imageNamed:@"w.png"] forState:UIControlStateNormal];
        [_inputW setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
    }
    
    
}


@end




