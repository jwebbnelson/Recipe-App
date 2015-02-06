//
//  RecipeViewController.m
//  Recipe App
//
//  Created by Jordan Nelson on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeViewController.h"
#import "RecipesTableViewDataSource.h"
#import "PushPopViewController.h"
#import "RARecipes.h"

@interface RecipeViewController () <UITableViewDelegate>

// #1 - DECLARE TABLEVIEW PROPERTY
@property (nonatomic,strong)UITableView *tableView;

@property (nonatomic, strong)RecipesTableViewDataSource *dataSource;
//@property (nonatomic, strong)UIImageView *imageView;

@end

@implementation RecipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
  
    self.dataSource = [RecipesTableViewDataSource new];
    
// #2 - INITIALIZE TABLEVIEW PROPERTY
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    
// #3 - SET DATASOURCE OF TABLEVIEW
    self.tableView.dataSource = self.dataSource;
    
// #4 - REGISTER CELL TYPES WITH TABLEVIEW
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
// #5 - ADD TABLEVIEW TO VIEWCONTROLLER(CLASS)'S VIEW AS SUBVIEW
    [self.view addSubview:self.tableView];
    
    self.tableView.delegate = self;
}

// #6 - IMPLEMENT UITABLEVIEWDATASOURCE PROTOCOL (IN DATASOURCE METHOD)


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    PushPopViewController *ppController = [PushPopViewController new];
    
    ppController.detailIndexPath = indexPath;
    
    [self.navigationController pushViewController:ppController animated:YES];
    
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
