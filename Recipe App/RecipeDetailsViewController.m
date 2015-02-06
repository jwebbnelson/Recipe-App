//
//  PushPopViewController.m
//  Recipe App
//
//  Created by Jordan Nelson on 2/5/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeViewController.h"
#import "RecipeDetailsViewController.h"
#import "RARecipes.h"

@interface RecipeDetailsViewController ()

@end

@implementation RecipeDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height;
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    scrollView.contentSize = CGSizeMake(width,height+10);
    
    // PushPopVC Title Initiation
    self.title = [RARecipes titleAtIndex:self.detailIndexPath.row];
    
    CGFloat viewHeight = 100;
    CGFloat sideMargin = 10;
    
    // Image addition to Scrollview
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(sideMargin, 0, width - sideMargin, viewHeight)];
    UIImage *selectedImage = [UIImage imageNamed:[RARecipes imageAtIndex:self.detailIndexPath.row]];
    [imageView setImage:selectedImage];
    [scrollView addSubview:imageView];
    
    
    // Description
    UILabel *descriptionLabel = [[UILabel alloc]initWithFrame:CGRectMake(sideMargin, 110, width-sideMargin, 40)];
    [descriptionLabel setText:[RARecipes descriptionAtIndex:self.detailIndexPath.row]];
    descriptionLabel.numberOfLines = 0;
    [descriptionLabel sizeToFit];
    [scrollView addSubview:descriptionLabel];

    
    //Ingredients
    UILabel *ingredientLabel = [[UILabel alloc]initWithFrame:CGRectMake(sideMargin, 220, width - sideMargin, 20)];
    [ingredientLabel setText:@"Ingredients:"];
    [scrollView addSubview:ingredientLabel];
    
    for (int i = 0; i < [RARecipes ingredientCountAtIndex:self.detailIndexPath.row]; i++) {
        UILabel *ingredients = [[UILabel alloc]initWithFrame:CGRectMake(width/2, 240 + 20 * i, (width - sideMargin)/2, 60)];
        [ingredients setText:[RARecipes ingredientTypeAtIndex:i inRecipeAtIndex:self.detailIndexPath.row]];
        ingredients.numberOfLines = 0;
        [ingredients sizeToFit];
        
        UILabel *volume = [[UILabel alloc]initWithFrame:CGRectMake(sideMargin, 240 +20*i, (width-sideMargin)/2 ,60)];
        [volume setText:[RARecipes ingredientVolumeAtIndex:i inRecipeAtIndex:self.detailIndexPath.row]];
        [volume sizeToFit];
        
        [scrollView addSubview:volume];
        [scrollView addSubview:ingredients];
    }
  
    [self.view addSubview:scrollView];
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
