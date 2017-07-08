//
//  ViewController.m
//  TapTaps
//
//  Created by Vasilii on 08.07.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //установка распознавателя нажатий и его присоединения к текущему представлению
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTap)];
    singleTap.numberOfTapsRequired = 1;
    singleTap.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:singleTap];
    //устанавливаем еще один распознаватель жестов для обработки двойного нажатия экрана.
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTap)];
    doubleTap.numberOfTapsRequired = 2;
    doubleTap.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:doubleTap];
    [singleTap requireGestureRecognizerToFail:doubleTap];
    
    UITapGestureRecognizer *tripleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tripleTap)];
    tripleTap.numberOfTapsRequired = 3;
    tripleTap.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:tripleTap];
    [doubleTap requireGestureRecognizerToFail:tripleTap];
    
    UITapGestureRecognizer *quadrupleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(quadrupleTap)];
    quadrupleTap.numberOfTapsRequired = 4;
    quadrupleTap.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:quadrupleTap];
    [tripleTap requireGestureRecognizerToFail:quadrupleTap];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)singleTap
{
    self.singleLabel.text = @"Single Tap Detected"; [self performSelector:@selector(clearLabel:) withObject:self.singleLabel
                                                               afterDelay:1.6f];
}
- (void)doubleTap
{
    self.doubleLabel.text = @"Double Tap Detected"; [self performSelector:@selector(clearLabel:) withObject:self.doubleLabel
                                                               afterDelay:1.6f];
}
- (void)tripleTap
{
    self.tripleLabel.text = @"Triple Tap Detected"; [self performSelector:@selector(clearLabel:) withObject:self.tripleLabel
                                                               afterDelay:1.6f];
}
- (void)quadrupleTap
{
    self.quadrupleLabel.text = @"Quadruple Tap Detected"; [self performSelector:@selector(clearLabel:) withObject:self.quadrupleLabel
                                                                     afterDelay:1.6f];
}
- (void)clearLabel:(UILabel *)label {
    label.text = @"";
}

@end
