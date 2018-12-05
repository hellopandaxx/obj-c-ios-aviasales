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
#import "Views/First TableView controller/ObjectTableViewController.h"
#import "Views/Second TableView controller/TableViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self addTestNavigationButton];
    [self addFirstTableViewButton];
    [self addSecondTableViewButton];
    
    // [[DataManager sharedInstance] loadData];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadDataComplete) name:kDataManagerLoadDataDidComplete object:nil];
}

- (void)addTestNavigationButton
{
    CGRect frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2 - 100.0, [UIScreen mainScreen].bounds.size.height/2 - 25.0, 200.0, 50.0);
    UIButton *button = [UIButton buttonWithType: UIButtonTypeSystem];
    [button setTitle:@"Navigate to second VC" forState:UIControlStateNormal];
    button.frame = frame;
    [button addTarget:self action:@selector(navigateToSecondVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)addFirstTableViewButton
{
    CGRect frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2 - 100.0, [UIScreen mainScreen].bounds.size.height/2 + 25.0, 200.0, 50.0);
    UIButton *button = [UIButton buttonWithType: UIButtonTypeSystem];
    [button setTitle:@"Navigate to the 1st TableView" forState:UIControlStateNormal];
    button.frame = frame;
    [button addTarget:self action:@selector(navigateToObjTableVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)addSecondTableViewButton
{
    CGRect frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2 - 100.0, [UIScreen mainScreen].bounds.size.height/2 + 75.0, 200.0, 50.0);
    UIButton *button = [UIButton buttonWithType: UIButtonTypeSystem];
    [button setTitle:@"Navigate to the 2nd TableView" forState:UIControlStateNormal];
    button.frame = frame;
    [button addTarget:self action:@selector(navigateToTableVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)navigateToSecondVC
{
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondViewController animated:true];
}

- (void)navigateToObjTableVC
{
    ObjectTableViewController *tableViewController = [[ObjectTableViewController alloc] init];
    [self.navigationController pushViewController:tableViewController animated:true];
}

- (void)navigateToTableVC
{
    TableViewController *tableViewController = [[TableViewController alloc] init];
    [self.navigationController pushViewController:tableViewController animated:true];
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
