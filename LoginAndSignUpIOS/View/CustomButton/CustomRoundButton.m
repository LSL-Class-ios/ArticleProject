//
//  CustomRoundButton.m
//  LoginAndSignUpIOS
//
//  Created by LIVSOULIN on 7/5/16.
//  Copyright (c) 2016 LIVSOULIN. All rights reserved.
//

#import "CustomRoundButton.h"

@implementation CustomRoundButton

-(void)awakeFromNib{
    
    self.layer.cornerRadius = self.layer.frame.size.height/2;
    self.layer.masksToBounds = NO;
    
}

@end
