//
//  ViewController.m
//  DigitalFrame
//
//  Created by Dayside_Sam on 2020/07/29.
//  Copyright © 2020 Dayside_Sam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //set ImageSets
    NSArray *imgDatas = [[NSArray alloc]initWithObjects:
                         [UIImage imageNamed:@"simpsons1.png"],
                         [UIImage imageNamed:@"simpsons2.jpeg"],
                         [UIImage imageNamed:@"simpsons3.png"],
                         [UIImage imageNamed:@"simpsons4.jpeg"],
                         [UIImage imageNamed:@"simpsons5.jpeg"],
                         [UIImage imageNamed:@"simpsons6.jpeg"],
                         [UIImage imageNamed:@"simpsons7.jpeg"],
                         [UIImage imageNamed:@"simpsons8.jpeg"],
                         [UIImage imageNamed:@"simpsons9.jpeg"],
                         [UIImage imageNamed:@"simpsons10.jpeg"],
                         [UIImage imageNamed:@"simpsons11.jpeg"],
                         [UIImage imageNamed:@"simpsons12.jpeg"],
                         nil];
    
    _imgView.animationImages = imgDatas;
    
    
    _speedLabel.text = [[NSString alloc]initWithFormat:@"%.2f",_speedSlider.value];
    [_imgView setAnimationDuration:15 - _speedSlider.value];
}

- (IBAction)startStopAction:(id)sender {
    if ([_imgView isAnimating]) {
        [_imgView stopAnimating];
        [_startStopBtn setTitle:@"Stop" forState:UIControlStateNormal];
    } else {
        [_imgView startAnimating];
        [_startStopBtn setTitle:@"Start" forState:UIControlStateNormal];
    }
    
    [_startStopBtn setTitle:@"Stop" forState:UIControlStateNormal];
}

- (IBAction)speedSliderAction:(id)sender {
    _speedLabel.text = [[NSString alloc]initWithFormat:@"%.2f",_speedSlider.value];
    // 최대속도인 15에서 값을 빼주어서 오른쪽으로 이동할수록 빨라지는 효과를 볼 수 있다.
    // 15에서 빼주지 않으면 오른쪽으로 갈수록 느려진다.
    [_imgView setAnimationDuration:15  - _speedSlider.value];
    [_imgView startAnimating];
}

@end
