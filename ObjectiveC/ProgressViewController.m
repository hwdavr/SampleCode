//
//  ProgressViewController.m
//  CepSDK
//
//  Created by Weidian on 7/10/17.
//  Copyright © 2017 zjtech. All rights reserved.
//

#import "ProgressViewController.h"

@interface ProgressViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spiner;
@property (weak, nonatomic) IBOutlet UILabel *msg;

@end

@implementation ProgressViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    NSString* const frameworkBundleID  = @"com.zjtech.sdk";
    NSBundle* bundle = [NSBundle bundleWithIdentifier:frameworkBundleID];
    self = [super initWithNibName:@"ProgressViewController" bundle:bundle];
    if (self) {
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [_spiner startAnimating];
    [_msg setText:@"开卡中..."];
    // Do any additional setup after loading the view from its nib.
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
