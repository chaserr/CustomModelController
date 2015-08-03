# CustomModelController
自定义模态视图,三行代码,实现自己想要的模态效果,包括对模态视图大小的控制,
使用方法:
第一步:
导入#import "TXTransition.h"头文件
第二步:
在要模态出视图的那个方法里把样式设置为自定义
TXSecondViewController *secondVC = [[TXSecondViewController alloc] init];
    
    // 1. 设置展示样式为自定义(必须)
    secondVC.modalPresentationStyle = UIModalPresentationCustom;
第三步:
添加代理:
    // 2. 设置代理
    /** 告诉哪一个控制器来给将要model出来的控制器提供动画 */
    secondVC.transitioningDelegate = [TXTransition sharedtransition]; 
    
    最后模态出来
    [self presentViewController:secondVC animated:YES completion:nil];
    
    可以自定义模态出来的动画效果
