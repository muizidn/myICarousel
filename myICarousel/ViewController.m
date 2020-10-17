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
@property (weak, nonatomic) IBOutlet iCarousel *iCarouselView;
@end

@interface ViewController (iCarouselDataSource) <iCarouselDataSource>
@end

@interface ViewController (iCarouselDelegate) <iCarouselDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.iCarouselView setDataSource:self];
    [self.iCarouselView setDelegate:self];
    [self.view setBackgroundColor:UIColor.brownColor];
}


@end

@implementation ViewController (iCarouselDataSource)
- (nonnull UIView *)carousel:(nonnull iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(nullable UIView *)view {
    UILabel * label = [[UILabel alloc]
                       initWithFrame:
                       CGRectMake(0, 0,
                                  carousel.frame.size.width,
                                  carousel.frame.size.height)];
    [label setText:[NSString stringWithFormat:@"label %ld", (long)index]];
    [label setTextAlignment:NSTextAlignmentCenter];
    switch (index) {
        case 0:
            [label setBackgroundColor:UIColor.redColor];
            break;
        case 1:
            [label setBackgroundColor:UIColor.blueColor];
            break;
        case 2:
            [label setBackgroundColor:UIColor.yellowColor];
            break;
        default:
            break;
    }
    return label;
}

- (NSInteger)numberOfItemsInCarousel:(nonnull iCarousel *)carousel {
    return 3;
}

@end

@implementation ViewController (iCarouselDelegate)
@end
