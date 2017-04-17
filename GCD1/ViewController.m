//
//  ViewController.m
//  GCD1
//
//  Created by 常红亮 on 16/8/4.
//  Copyright © 2016年 RIch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [self syncSerial];
}
- (void)syncSerial
{
    NSLog(@"我被执行了");
    // 1.创建一个串行队列
    // #define DISPATCH_QUEUE_SERIAL NULL
    // 所以可以直接传NULL
    dispatch_queue_t queue = dispatch_queue_create("com.520it",DISPATCH_QUEUE_SERIAL);
//    dispatch_queue_t queue = dispatch_get_main_queue();
    
    // 2.将任务添加到队列中
    dispatch_sync(queue, ^{
        NSLog(@"任务1  == %@", [NSThread currentThread]);
//        for (NSInteger i = 0; i<100; i++) {
//            NSLog(@"这是第%ld次打印",(long)i);
//            NSLog(@"%@",[NSThread currentThread]);
//        }
        NSLog(@"我是猪队列中的");

    });
//    dispatch_sync(queue, ^{
//        NSLog(@"任务2  == %@", [NSThread currentThread]);
//        for (NSInteger i = 0; i<100; i++) {
//            NSLog(@"这是任务二%ld次打印",(long)i);
//            NSLog(@"%@",[NSThread currentThread]);
//        }
//        
//    });
//    dispatch_sync(queue, ^{
//        NSLog(@"任务3  == %@", [NSThread currentThread]);
//    });
//    for (NSInteger i = 0; i<100; i++) {
//        NSLog(@"这是任务三%ld次打印",(long)i);
//        NSLog(@"%@",[NSThread currentThread]);
//    }
    
    NSLog(@"---------");
}
@end
