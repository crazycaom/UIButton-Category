//
//  ViewController.m
//  UIButton_Category
//
//  Created by CaoMeng on 2017/4/10.
//  Copyright © 2017年 CM. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+AcceptTouchEvent.h"
#import "UIButton+EnlargeEdge.h"

@interface ViewController ()

@property(nonatomic, strong) UIButton       *testButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.testButton];
    
    // 设置事件点击间隔为5s
    _testButton.acceptEventInterval = 1.5;
    
    // 设置按钮点击范围
    [_testButton setEnlargeEdge:100];
    //[_testButton setEnlargeEdgeWithTop:100 right:100 bottom:100 left:100];
    
}

- (UIButton *)testButton{
    if(_testButton){
        return _testButton;
    }
    
    _testButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, self.view.frame.size.width - 200, 30)];
    _testButton.backgroundColor = [UIColor cyanColor];
    [_testButton setTitle:@"点我点我.." forState:UIControlStateNormal];
    [_testButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_testButton addTarget:self action:@selector(testTouchEvent) forControlEvents:UIControlEventTouchUpInside];
    
    return _testButton;
}

- (void)testTouchEvent{
    NSLog(@"被点击了..");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
