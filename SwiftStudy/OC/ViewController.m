//
//  ViewController.m
//  OC
//
//  Created by ZhuChaoJun on 2022/2/27.
//  Copyright © 2022 Zhu ChaoJun. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Person *per = [[Person alloc] init];
    Person *per2 = [[Person alloc] init];
    Class per3 = [per class];
    Class per4 = [Person class];
    Class per5 = object_getClass(per3);

    Class objClass = objc_getClass("Person");
    Class objClass1 = object_getClass(per2);

    NSLog(@"==========%p-%p-%p", per3, per4, per5);
}

@end
