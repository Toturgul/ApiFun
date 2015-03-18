//
//  ViewController.m
//  ApiFun
//
//  Created by Levan Toturgul on 3/18/15.
//  Copyright (c) 2015 Levan. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>

@interface ViewController ()
- (IBAction)fourSquareButton:(id)sender;
- (IBAction)congressButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
//    NSMutableDictionary *congressmanInfo = [[NSMutableDictionary alloc] init];
    
// //***All thats needed to get info from API
//    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
//    NSString *urlString = @"http://congress.api.sunlightfoundation.com/committees";
//    NSDictionary *congressParams = @{@"member_ids":@"P000096",
//                                     @"apikey":@"f730f525ec0e4a11839ebbfb360bd73a"};
//    
//    [session GET:urlString
//      parameters:congressParams
//         success:^(NSURLSessionDataTask *task, id responseObject) {
//             NSDictionary *congressInfo = responseObject;
//             for (NSDictionary *temp in congressInfo[@"results"]) {
//                 NSLog(@"committee name:%@",temp[@"name"]);
//             }
//             
//        //     NSLog(@"Committees that your congressman belongs to: %@",responseObject[@"results"]);
//         }
//         failure:^(NSURLSessionDataTask *task, NSError *error) {
//             NSLog(@"Failure: %@",error.localizedDescription);
//         }];
////***
    
    
    
    
    
    

    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fourSquareButton:(id)sender {
    
}

- (IBAction)congressButton:(id)sender {
}
@end
