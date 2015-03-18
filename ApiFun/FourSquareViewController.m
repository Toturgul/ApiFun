//
//  FourSquareViewController.m
//  ApiFun
//
//  Created by Levan Toturgul on 3/18/15.
//  Copyright (c) 2015 Levan. All rights reserved.
//

#import "FourSquareViewController.h"
#import <AFNetworking.h>
@interface FourSquareViewController ()

@end

@implementation FourSquareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    
    NSString *squareURL = @"https://api.foursquare.com/v2/venues/search";
    NSDictionary *squareParam = @{@"client_id":@"G0PL1XGLFN2MHU2CJSGY0HPPYNCHWRNOPZCLTHR3O0EFTV4G",
                                  @"client_secret":@"L3R2QU0ZUJFQ3SFP0QDZFVTCDL0KGFAENKQQCQTLQZRE43JS",
                                  @"near":@"elmwood park,nj",
                                  @"query":@"pizza",
                                  @"v":@"20150318",
                                  @"m":@"foursquare"};
    
    [session GET:squareURL
      parameters:squareParam
         success:^(NSURLSessionDataTask *task, id responseObject) {
             NSDictionary *results = responseObject;
             for (NSDictionary *temp in results[@"response"][@"venues"]) {
                 NSLog(@"%@",temp[@"name"]);
             }
             
             
             
             // NSLog(@"Pizza near by: %@",results[@"response"][@"venues"][1]);
         }
         failure:^(NSURLSessionDataTask *task, NSError *error) {
             NSLog(@"Failure: %@",error.localizedDescription);
         }];

    
    
    
    
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
