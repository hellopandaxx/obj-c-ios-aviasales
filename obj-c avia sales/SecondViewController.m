//
//  SecondViewController.m
//  obj-c avia sales
//
//  Created by Sergey Kuznetsov on 29/11/2018.
//  Copyright © 2018 Sergey Kuznetsov. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self addLabel];
}

- (void) addLabel
{
    CGRect labelFrame = CGRectMake(40.0, 40.0, [UIScreen mainScreen].bounds.size.width - 80.0, [UIScreen mainScreen].bounds.size.height - 80.0);
    UILabel *label = [[UILabel alloc] initWithFrame: labelFrame];
    label.font = [UIFont systemFontOfSize:24.0 weight:UIFontWeightBold];
    label.textColor = [UIColor darkGrayColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"Second screen!";
    [self.view addSubview: label];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
