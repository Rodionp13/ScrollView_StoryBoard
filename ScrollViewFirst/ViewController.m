//
//  ViewController.m
//  ScrollViewFirst
//
//  Created by User on 7/3/18.
//  Copyright © 2018 BNR. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myScrollView.delegate = self;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    if(scrollView.contentOffset.x == 0) {
        [self.view setBackgroundColor:UIColor.greenColor];
    } else {
        [self.view setBackgroundColor:UIColor.orangeColor];
    }
    
    //NSLog(@"%@", NSStringFromCGPoint(self.myScrollView.contentOffset));
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
