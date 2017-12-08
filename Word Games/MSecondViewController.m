//
//  SecondViewController.m
//  Word Games
//
//  Created by Salah El Abd on 11/29/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MSecondViewController.h"
#import "MViewController.h"

@interface MSecondViewController ()

@end

@implementation MSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.L1Second.hidden = true;
    self.O1Second.hidden = true;
    self.S1Second.hidden = true;
    self.T1Second.hidden = true;
    self.S2Second.hidden = true;
    self.O2Second.hidden = true;
    self.R1Second.hidden = true;
    self.E1Second.hidden = true;
    self.R2Second.hidden = true;
    self.E2Second.hidden = true;
    self.S3Second.hidden = true;
    self.T2Second.hidden = true;
    self.O3Second.hidden = true;
    self.L2Second.hidden = true;
    self.E3Second.hidden = true;
    self.L3Second.hidden = true;
    self.E4Second.hidden = true;
    self.S4Second.hidden = true;
    self.S5Second.hidden = true;
    self.T3Second.hidden = true;
    
    
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

- (IBAction)BackLevelButtonn:(UIButton *)sender {
    if (sender.selected) {
        [self BackLevel];
    }

 
 
 }




 -(void)BackLevel{
 MViewController *MSecondViewController;
 MSecondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MViewController"];
 [self presentViewController:MSecondViewController animated:YES completion:nil];
 
 }
 
- (IBAction)inputtR:(UIButton *)sender;{
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
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
    [self checkForSequence12];
    [self checkForSequence13];
    [self checkForSequence14];
     }
- (IBAction)inputtO:(UIButton *)sender;{
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
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
    [self checkForSequence12];
    [self checkForSequence13];
    [self checkForSequence14];
     }
- (IBAction)inputtS:(UIButton *)sender;{
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
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
    [self checkForSequence12];
    [self checkForSequence13];
    [self checkForSequence14];
     }
- (IBAction)inputtT:(UIButton *)sender;{
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
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
    [self checkForSequence12];
    [self checkForSequence13];
    [self checkForSequence14];
     }
- (IBAction)inputtE:(UIButton *)sender;{
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
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
    [self checkForSequence12];
    [self checkForSequence13];
    [self checkForSequence14];
     }
- (IBAction)inputtL:(UIButton *)sender;{
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
    [self checkForSequence2];
    [self checkForSequence3];
    [self checkForSequence4];
    [self checkForSequence5];
    [self checkForSequence6];
    [self checkForSequence7];
    [self checkForSequence8];
    [self checkForSequence9];
    [self checkForSequence10];
    [self checkForSequence11];
    [self checkForSequence12];
    [self checkForSequence13];
    [self checkForSequence14];
     }

-(void)checkForSequence2{
    if (_inputL.selected && _inputO.selected && _inputS.selected && _inputT.selected) {
        self.L1Second.hidden = false;
        self.O1Second.hidden = false;
        self.S1Second.hidden = false;
        self.T1Second.hidden = false;
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
    }
}

-(void)checkForSequence3{
    if (_inputS.selected && _inputO.selected && _inputR.selected && _inputE.selected) {
        self.S2Second.hidden = false;
        self.O2Second.hidden = false;
        self.R1Second.hidden = false;
        self.E1Second.hidden = false;
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
    }
}

-(void)checkForSequence4{
    if (_inputR.selected && _inputE.selected && _inputS.selected && _inputT.selected) {
        self.R2Second.hidden = false;
        self.E2Second.hidden = false;
        self.S3Second.hidden = false;
        self.T2Second.hidden = false;
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
    }
}
-(void)checkForSequence5{
    if (_inputS.selected && _inputO.selected && _inputL.selected && _inputE.selected) {
        self.S4Second.hidden = false;
        self.O3Second.hidden = false;
        self.L2Second.hidden = false;
        self.E3Second.hidden = false;
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
    }
}
-(void)checkForSequence6{
    if (_inputL.selected && _inputE.selected && _inputS.selected && _inputT.selected) {
        self.L3Second.hidden = false;
        self.E4Second.hidden = false;
        self.S5Second.hidden = false;
        self.T3Second.hidden = false;
        [_inputR setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t_.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
    }
}
-(void)checkForSequence7{
    if (_inputL.selected && _inputE.selected && _inputT.selected && _inputS.selected) {
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
    }
}
-(void)checkForSequence8{
    if (_inputL.selected && _inputO.selected && _inputR.selected && _inputE.selected) {
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
    }
}
-(void)checkForSequence9{
    if (_inputL.selected && _inputO.selected && _inputS.selected && _inputE.selected) {
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
    }
}
-(void)checkForSequence10{
    if (_inputR.selected && _inputO.selected && _inputL.selected && _inputE.selected) {
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
    }
}
-(void)checkForSequence11{
    if (_inputR.selected && _inputO.selected && _inputS.selected && _inputE.selected) {
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
    }
}
-(void)checkForSequence12{
    if (_inputS.selected && _inputL.selected && _inputO.selected && _inputT.selected) {
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputL setImage:[UIImage imageNamed:@"l.png"] forState:UIControlStateNormal];
        [_inputL setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
    }
}
-(void)checkForSequence13{
    if (_inputS.selected && _inputO.selected && _inputR.selected && _inputT.selected) {
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputR setImage:[UIImage imageNamed:@"r.png"] forState:UIControlStateNormal];
        [_inputR setSelected:NO];
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
    }
}
-(void)checkForSequence14{
    if (_inputT.selected && _inputO.selected && _inputE.selected && _inputS.selected) {
        [_inputT setImage:[UIImage imageNamed:@"t.png"] forState:UIControlStateNormal];
        [_inputT setSelected:NO];
        [_inputO setImage:[UIImage imageNamed:@"o.png"] forState:UIControlStateNormal];
        [_inputO setSelected:NO];
        [_inputE setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
        [_inputE setSelected:NO];
        [_inputS setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
        [_inputS setSelected:NO];
    }
}


 
@end






