//
//  ViewController.m
//  myICarousel
//
//  Created by Muis on 11/10/20.
//  Copyright © 2020 Muis. All rights reserved.
//

#import "ViewController.h"
#import "iCarousel.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:UIColor.redColor];
}


@end

@interface ViewController (iCarouselDataSource) <iCarouselDataSource>
@end

@implementation ViewController (iCarouselDataSource)
- (nonnull UIView *)carousel:(nonnull iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(nullable UIView *)view {
    return NULL;
}

- (NSInteger)numberOfItemsInCarousel:(nonnull iCarousel *)carousel {
    return 0;
}

@end

@interface ViewController (iCarouselDelegate) <iCarouselDelegate>
@end

@implementation ViewController (iCarouselDelegate)
@end
