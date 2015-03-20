//
//  FourSquareResultsTableViewController.m
//  ApiFun
//
//  Created by Levan Toturgul on 3/18/15.
//  Copyright (c) 2015 Levan. All rights reserved.
//

#import "FourSquareResultsTableViewController.h"
#import <AFNetworking.h>
@interface FourSquareResultsTableViewController ()

@end

@implementation FourSquareResultsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultsArray = [[NSMutableArray alloc] init];
    
    NSLog(@"%@",self.paramArray);
    
    
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    
    NSString *squareURL = @"https://api.foursquare.com/v2/venues/search";
    NSDictionary *squareParam = @{@"client_id":@"G0PL1XGLFN2MHU2CJSGY0HPPYNCHWRNOPZCLTHR3O0EFTV4G",
                                  @"client_secret":@"L3R2QU0ZUJFQ3SFP0QDZFVTCDL0KGFAENKQQCQTLQZRE43JS",
                                  @"near":self.paramArray[0],
                                  @"query":self.paramArray[1],
                                  @"v":@"20150318",
                                  @"m":@"foursquare"};
    
    [session GET:squareURL
      parameters:squareParam
         success:^(NSURLSessionDataTask *task, id responseObject) {
             NSDictionary *results = responseObject;
             for (NSDictionary *temp in results[@"response"][@"venues"]) {
                 NSString *nameOfPlace = temp[@"name"];
                 NSLog(@"%@",nameOfPlace);
                 [self.resultsArray addObject:nameOfPlace];
                 NSLog(@"%li",[self.resultsArray count]);
             }
             [[NSOperationQueue mainQueue]addOperationWithBlock:^{
                 [self.tableView reloadData];
             }];
             
         }
         failure:^(NSURLSessionDataTask *task, NSError *error) {
             NSLog(@"Failure: %@",error.localizedDescription);
         }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.resultsArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"squareResults" forIndexPath:indexPath];
    
  //  NSString *cellfiller = self.resultsArray[indexPath.row];
    cell.textLabel.text = self.resultsArray[indexPath.row];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
