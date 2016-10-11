//
//  UIButton+FloatDrag.h
//  FloatDragButton
//
//  Created by rocky on 16/10/11.
//  Copyright © 2016年 RockyFung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (FloatDrag)
@property(nonatomic,assign,getter = isDragEnable)   BOOL dragEnable;
@property(nonatomic,assign,getter = isAdsorbEnable) BOOL adsorbEnable;
@end
