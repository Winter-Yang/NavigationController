//
//  YQViewController.m
//  YQNavigationController
//
//  Created by 杨雯德 on 16/2/17.
//  Copyright © 2016年 杨雯德. All rights reserved.
//

#import "YQViewController.h"
#import "UIColor+RandomColor.h"
#import "YQTWO.h"
@interface YQViewController ()
@property(nonatomic,strong)UIScrollView *la;

@end

@implementation YQViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    NSString * str = [[NSUserDefaults standardUserDefaults] objectForKey:@"index"];
//    if (str) {
//        int index = [str intValue]+1;
//        self.title = [NSString stringWithFormat:@"%d",index];
//        [[NSUserDefaults standardUserDefaults] setObject:self.title forKey:@"index"];
//    }else{
//        self.title = @"0";
//        [[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"index"];
//
//    }
//    
    self.title = @"title";
    self.view.backgroundColor = [UIColor redColor];
    self.navigationController.navigationBar.barTintColor = [UIColor randomColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(didTapNextButton)];
    
    
    self.la = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 375, 668)];
    self.la.backgroundColor = [UIColor brownColor];
    self.la.contentSize = CGSizeMake(700, 10101);
    [self.view addSubview:self.la];




    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 40);
    btn.backgroundColor = [UIColor randomColor];
    [btn setTitle:@"pop" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(100, 200, 100, 40);
    btn1.backgroundColor = [UIColor randomColor];
    [btn1 setTitle:@"popindex" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(popindex) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];

    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(100, 300, 100, 40);
    btn2.backgroundColor = [UIColor randomColor];
    [btn2 setTitle:@"poproot" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(poproot) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    // Do any additional setup after loading the view.
}
-(void)pop
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)popindex
{
    [self.navigationController popToViewController:self.navigationController.viewControllers[1] animated:YES];
}
-(void)poproot
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (void)didTapNextButton {
    YQTWO *viewController = [[YQTWO alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
