//
//  ProfileVC.m
//  LoginAndSignUpIOS
//
//  Created by LIVSOULIN on 7/5/16.
//  Copyright (c) 2016 LIVSOULIN. All rights reserved.
//

#import "ProfileVC.h"

@implementation ProfileVC
@synthesize user;

-(void)viewDidLoad{
    [self prepareImageView];
    [self PrepareLabel];
}

//Custom Image
-(void)prepareImageView{
    
    self.imageview.layer.borderWidth = 5.0f;
    self.imageview.layer.borderColor = [[UIColor brownColor]CGColor];
    self.imageview.layer.cornerRadius = self.imageview.frame.size.height/2;
    self.imageview.layer.masksToBounds = YES;
    
}


-(void)PrepareLabel{
    
    _nameLabel.text = user.name;
    _phoneLabel.text = user.phonenumber;
    _detailLabel.text = user.about;
    _ageLabel.text = [NSString stringWithFormat:@"%d",user.age];
    
}

@end
