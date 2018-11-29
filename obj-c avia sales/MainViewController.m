//
//  MainViewController.m
//  obj-c avia sales
//
//  Created by Sergey Kuznetsov on 28/11/2018.
//  Copyright © 2018 Sergey Kuznetsov. All rights reserved.
//

#import "MainViewController.h"
#import "Data/DataManager.h"
#import "SecondViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self addButton];
    // [[DataManager sharedInstance] loadData];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadDataComplete) name:kDataManagerLoadDataDidComplete object:nil];
}

- (void)addButton
{
    CGRect frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2 - 100.0, [UIScreen mainScreen].bounds.size.height/2 - 25.0, 200.0, 50.0);
    UIButton *button = [UIButton buttonWithType: UIButtonTypeSystem];
    [button setTitle:@"Navigate to second VC" forState:UIControlStateNormal];
    button.frame = frame;
    [button addTarget:self action:@selector(navigateToSecondVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)navigateToSecondVC
{
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondViewController animated:true];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:kDataManagerLoadDataDidComplete object:nil];
}

- (void)loadDataComplete
{
    self.view.backgroundColor = [UIColor yellowColor];
}

@end
