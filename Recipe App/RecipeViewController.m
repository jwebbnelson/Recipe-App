//
//  RecipeViewController.m
//  Recipe App
//
//  Created by Jordan Nelson on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeViewController.h"
#import "RecipesTableViewDataSource.h"

@interface RecipeViewController ()

@property (nonatomic,strong)UITableView *tableView;
@property (nonatomic, strong)RecipesTableViewDataSource *dataSource;
@property (nonatomic, strong)UIImageView *imageView;

@end

@implementation RecipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.dataSource = [RecipesTableViewDataSource new];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    
    [self.view addSubview:self.tableView];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    self.tableView.dataSource = self.dataSource;
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
