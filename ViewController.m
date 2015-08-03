//
//  ViewController.m
//  CustomModelController
//  Copyright (c) 2015年 朝夕. All rights reserved.
//

#import "ViewController.h"
#import "TXSecondViewController.h"
#import "TXThirdViewController.h"
#import "TXTransition.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

/** 通过纯代码实现model控制器 */
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {


    TXSecondViewController *secondVC = [[TXSecondViewController alloc] init];
    
    // 1. 设置展示样式为自定义(必须)
    secondVC.modalPresentationStyle = UIModalPresentationCustom;
    
    // 2. 设置代理
    /** 告诉哪一个控制器来给将要model出来的控制器提供动画 */
    secondVC.transitioningDelegate = [TXTransition sharedtransition]; 
    
    [self presentViewController:secondVC animated:YES completion:nil];
    
    
}

- (IBAction)itemClick:(id)sender {
    
   UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
   TXThirdViewController *thirdVC =  [storyBoard instantiateViewControllerWithIdentifier:@"thridVC"];
    // 1. 设置展示样式为自定义(必须)
    thirdVC.modalPresentationStyle = UIModalPresentationCustom;
    
    // 2. 设置代理
    /** 告诉哪一个控制器来给将要model出来的控制器提供动画 */
    thirdVC.transitioningDelegate = [TXTransition sharedtransition];
    
    [self presentViewController:thirdVC animated:YES completion:nil];
}


//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//
//    UIViewController *destVC = segue.destinationViewController;
//    destVC.modalPresentationStyle = UIModalPresentationCustom;
//    destVC.transitioningDelegate = [TXTransition sharedtransition];
//    
//}

@end
