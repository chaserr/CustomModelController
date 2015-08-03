//
//  TXSecondViewController.m
//  CustomModelController
//
//  Created by lanou3g on 15/8/3.
//  Copyright (c) 2015年 朝夕. All rights reserved.
//

#import "TXSecondViewController.h"

@interface TXSecondViewController ()

@end

@implementation TXSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
