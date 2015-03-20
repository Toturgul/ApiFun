//
//  FourSquareViewController.m
//  ApiFun
//
//  Created by Levan Toturgul on 3/18/15.
//  Copyright (c) 2015 Levan. All rights reserved.
//

#import "FourSquareViewController.h"
#import "FourSquareResultsTableViewController.h"
@interface FourSquareViewController ()
@property (weak, nonatomic) IBOutlet UITextField *cityTextfield;
@property (weak, nonatomic) IBOutlet UITextField *stateTextfield;
@property (weak, nonatomic) IBOutlet UITextField *queryTextfield;


@end

@implementation FourSquareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    


    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    NSString *cityState = [NSString stringWithFormat:@"%@,%@",self.cityTextfield.text,self.stateTextfield.text];
    self.paramArray = @[cityState,self.queryTextfield.text];
    
    FourSquareResultsTableViewController *dataToSegue = segue.destinationViewController;
    dataToSegue.paramArray = self.paramArray;

    
}


@end
