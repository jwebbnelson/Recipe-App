

//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Jordan Nelson on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"

@implementation RecipesTableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [RARecipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[RARecipes imageAtIndex:indexPath.row]];
  
    return cell;
}

@end
