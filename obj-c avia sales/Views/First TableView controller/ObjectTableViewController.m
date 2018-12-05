//
//  ObjectTableViewController.m
//  obj-c avia sales
//
//  Created by Sergey Kuznetsov on 05/12/2018.
//  Copyright © 2018 Sergey Kuznetsov. All rights reserved.
//

#import "ObjectTableViewController.h"
#import "../CustomTableViewCell.h"

@interface ObjectTableViewController ()

@end

@implementation ObjectTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier"];
    if (!cell) {
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellIdentifier"];
    }
    
    //cell.textLabel.text = [NSString stringWithFormat:@"Object TableView cell %d", indexPath.row];
    cell.leftLabel.text = [NSString stringWithFormat:@"Cell %d", indexPath.row];
    cell.rightLabel.text = @"Right";

    return cell;
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
