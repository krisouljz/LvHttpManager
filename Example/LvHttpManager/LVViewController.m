//
//  LVViewController.m
//  LvHttpManager
//
//  Created by krisouljz on 03/31/2020.
//  Copyright (c) 2020 krisouljz. All rights reserved.
//

#import "LVViewController.h"
#import "LVTestAPIManager.h"

@interface LVViewController ()

@property(strong,nonatomic) LVTestAPIManager *manager;

@end

@implementation LVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.manager loadDataWithCompletion:^(id responseObject) {
        NSLog(@"success : %@",responseObject);
    } failed:^(NSURLResponse * _Nullable response, id  _Nullable responseObject, NSError * _Nullable error) {
        
    }];
}

- (LVTestAPIManager *)manager{
    if (!_manager){
        _manager = [[LVTestAPIManager alloc] init];
    }
    return _manager;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
