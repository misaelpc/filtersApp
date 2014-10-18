//
//  ViewController.h
//  PhotoFilters
//
//  Created by Misael Pérez Chamorro on 9/22/14.
//  Copyright (c) 2014 Misael Pérez Chamorro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoFilters-Swift.h"

@interface RKULoginViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet RKUTextField *userNameTextField;
@property (nonatomic, weak) IBOutlet RKUTextField *passwordTextField;

@end

