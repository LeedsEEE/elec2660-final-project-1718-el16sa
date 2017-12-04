//
//  MenuViewController.h
//  Word Games
//
//  Created by Salah El Abd on 12/1/17.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *Play;
@property (weak, nonatomic) IBOutlet UIButton *NewGame;


- (IBAction)Playy:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *NewGamee;


@end
