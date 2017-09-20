//
//  ViewController.m
//  iOS_JSON
//
//  Created by Herbert Hu on 2017/9/18.
//  Copyright © 2017年 Herbert Hu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 本地json文件解析
    NSString *jsonFilePath = [[NSBundle mainBundle] pathForResource:@"data1.json" ofType:nil];
    NSData *jsonData = [NSData dataWithContentsOfFile:jsonFilePath];
    
    NSDictionary *resultDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableLeaves error:nil];
    
    NSLog(@"%@", resultDic);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
