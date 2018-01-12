//
//  ViewController.m
//  appIcon
//
//  Created by 王禄宪 on 2017/7/29.
//  Copyright © 2017年 Marshal. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Extersion.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onClickToClicpsAppIcon:(UIButton *)sender {
    UIImage *image = [UIImage imageNamed:@"1024"];
    NSArray *appIcons = @[@40,@60,@58,@87,@80,@120,@180,@1024];
    for (NSNumber *appSize in appIcons) {
        [image clipsWithSize:[appSize longValue]];
    }
}


- (IBAction)onClickToClicpsCornerImage:(UIButton *)sender {
    UIImage *image = [UIImage imageNamed:@"1024"];
    NSArray *appIcons = @[@120, @180];
    for (NSNumber *appSize in appIcons) {
        [image clipsWithSize:[appSize longValue] cornerRadius:-1];
    }
}


@end
