//
//  ViewController.m
//  RuntimeD
//
//  Created by 冯玉亭 on 2017/1/19.
//  Copyright © 2017年 冯玉亭. All rights reserved.
//

#import "ViewController.h"
#import "Item.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    Item * item = [[Item alloc] init];
//    item.ageName1 = @"ageName";
//    NSLog(@"%@",item.ageName);
    
    
//    dispatch_group_t group = dispatch_group_create();
//    dispatch_queue_t defaultQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    NSLog(@"0");
//
//    dispatch_group_async(group, defaultQueue, ^{
//        NSLog(@"1");
//        [NSThread sleepForTimeInterval:3];
//        NSLog(@"1");
//    });
//    dispatch_group_async(group, defaultQueue, ^{
//        NSLog(@"2");
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"2");
//    });
//    dispatch_group_notify(group, defaultQueue, ^{
//        NSLog(@"3");
//    });
    
   
//等价于

//    dispatch_group_enter(group);
//    dispatch_async(defaultQueue, ^{
//        
//        NSLog(@"1");
//        [NSThread sleepForTimeInterval:3];
//        NSLog(@"1");
//        
//        dispatch_group_leave(group);
//    });
//    
//    dispatch_group_enter(group);
//    dispatch_async(defaultQueue, ^{
//        
//        NSLog(@"2");
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"2");
//        
//        dispatch_group_leave(group);
//    });
//
//    dispatch_group_notify(group,defaultQueue, ^{
//        NSLog(@"3");
//    });
    /*
    dispatch_queue_t queue = dispatch_queue_create("com.bjsxt.barrierExecute", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue, ^{
        NSLog(@"1");
        [NSThread sleepForTimeInterval:2];
        NSLog(@"1");
    });
    dispatch_async(queue, ^{
        NSLog(@"2");
        [NSThread sleepForTimeInterval:4];
        NSLog(@"2");
    });
    dispatch_barrier_async(queue, ^{
        NSLog(@"3");
        [NSThread sleepForTimeInterval:2];
        NSLog(@"3");

    });
    dispatch_async(queue, ^{
        NSLog(@"4");
        [NSThread sleepForTimeInterval:1];
        NSLog(@"4");
    });
     */
    
    Item * item1 = [[Item alloc] init];
    Item * item2 = [[Item alloc] init];
    Item * item3 = [[Item alloc] init];
    
    NSArray *array1 = [NSArray arrayWithObjects:item1,item2,item3,nil];
    NSArray *arrayCopy1 = [array1 copy];
    
    NSLog(@"%p-------%p",array1,arrayCopy1);
    
    
    NSArray *mArray1 = [NSArray arrayWithObjects:[NSMutableString stringWithString:@"a"],@"b",@"c",nil];
    NSArray *mArrayCopy2 = [mArray1 copy];
//    NSLog(@"mArray1 retain count: %d",[mArray1 retainCount]);
    NSMutableArray *mArrayMCopy1 = [mArray1 mutableCopy];
//    NSLog(@"mArray1 retain count: %d",[mArray1 retainCount]);
    NSLog(@"");
    [[NSArray alloc] initWithArray:nil copyItems:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
@end
