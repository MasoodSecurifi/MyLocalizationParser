//
//  ViewController.m
//  MyLocalizationParser
//
//  Created by Masood on 14/06/16.
//  Copyright © 2016 Masood. All rights reserved.
//

#import "ViewController.h"
#import "LParser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"view did load");
    
    [LParser getiOSLocalizableStirngs];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
