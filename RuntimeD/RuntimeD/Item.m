//
//  Item.m
//  RuntimeD
//
//  Created by 冯玉亭 on 2017/1/20.
//  Copyright © 2017年 冯玉亭. All rights reserved.
//

#import "Item.h"

@implementation Item{
    NSString * _ageName;
}
@synthesize address = _address;

- (void)setAddress:(NSString *)address{
    _address = address;
}

- (NSString *)address{
    
    return _address;
}

- (void)setAgeName1:(NSString *)address{
    _ageName = address;
    NSLog(@"setAgeName");
}

- (NSString *)ageName{
    NSLog(@"getAgeName");
    return _ageName;
}
@end
