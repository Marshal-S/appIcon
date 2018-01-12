//
//  UIImage+Extersion.h
//  appIcon
//
//  Created by 王禄宪 on 2017/7/31.
//  Copyright © 2017年 Marshal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extersion)

- (void)clipsWithSize:(long)size;

- (void)clipsWithSize:(long)size cornerRadius:(CGFloat)radius;//redius 负数表示默认圆角，0表示使用无圆角，，正数表示给定弧度圆角

@end
