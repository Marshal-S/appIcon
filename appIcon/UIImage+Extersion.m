//
//  UIImage+Extersion.m
//  appIcon
//
//  Created by 王禄宪 on 2017/7/31.
//  Copyright © 2017年 Marshal. All rights reserved.
//

#import "UIImage+Extersion.h"

@implementation UIImage (Extersion)

- (void)clipsWithSize:(long)size {
    [self clipsWithSize:size cornerRadius:0];
}

- (void)clipsWithSize:(long)size cornerRadius:(CGFloat)radius {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(size, size), radius==0, 1);
    if (radius < 0) {
        radius = size/8;
    }
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddPath(ctx, [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, size, size) cornerRadius:radius].CGPath);
    CGContextClip(ctx);
    
    [self drawInRect:CGRectMake(0, 0, size, size)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGContextRelease(ctx);
    NSData *imageData = UIImagePNGRepresentation(newImage);
    if (!imageData) {
        return;
    }
    NSString *path = @"/Users/wangluxian/Desktop/appIcons";
    NSFileManager *manager = [NSFileManager defaultManager];
    if (![manager fileExistsAtPath:path]) {
        [manager createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
    }
    [imageData writeToFile:[NSString stringWithFormat:@"%@/%ld-%d.png",path,size,radius!=0] atomically:YES];
}

@end
