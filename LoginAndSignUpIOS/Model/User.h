//
//  User.h
//  LoginAndSignUpIOS
//
//  Created by LIVSOULIN on 7/5/16.
//  Copyright (c) 2016 LIVSOULIN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface User : UIViewController{
    
    int uid;
    NSString * name;
    NSString * phonenumber;
    NSString * about;
    int age;
}
@property int uid;
@property NSString * name;
@property NSString * phonenumber;
@property NSString * about;
@property int age;


@end
