//
//  RARecipes.h
//  Recipe App
//
//  Created by Jordan Nelson on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RARecipes : NSObject

+ (NSInteger)count;

+ (NSDictionary *)recipeAtIndex:(NSInteger)index;

+ (NSString *)titleAtIndex:(NSInteger)index;

+ (NSString *)descriptionAtIndex:(NSInteger)index;

+ (NSInteger)ingredientCountAtIndex:(NSInteger)index;

+ (NSString *)ingredientTypeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex;

+ (NSString *)ingredientVolumeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex;

+ (NSString *)imageAtIndex:(NSInteger)index;

+ (NSArray *)directionsAtIndex:(NSInteger)index;

@end