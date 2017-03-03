//
//  Item.h
//  RuntimeD
//
//  Created by 冯玉亭 on 2017/1/20.
//  Copyright © 2017年 冯玉亭. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
@property(nonatomic,copy) NSString * address;
- (NSString *)ageName;
- (void)setAgeName1:(NSString *)address;
@end
