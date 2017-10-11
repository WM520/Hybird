//
//  MyViewController.m
//  Hybird
//
//  Created by 汪淼 on 2017/10/11.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "MyViewController.h"
#import "ViewController2.h"

@interface MyViewController ()
<UITableViewDelegate,
UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  [self initUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initUI
{
  self.mainTableView.delegate = self;
  self.mainTableView.dataSource = self;
  [self.mainTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  ViewController2 * vc = [[ViewController2 alloc] init];
//    [self presentViewController:vc animated:YES completion:^{
//
//    }];
  [self.navigationController pushViewController:vc animated:YES];
  NSLog(@"11111");
}


#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
  cell.textLabel.text = [NSString stringWithFormat:@"test ===== %ld", (long)indexPath.row];
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
