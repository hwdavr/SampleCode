#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


- (NSInteger)progressAlert {
    alert = [UIAlertController alertControllerWithTitle:@"Processing..."
                                                                  message:nil
                                                           preferredStyle:UIAlertControllerStyleAlert];

    [alert addAction:[UIAlertAction actionWithTitle: @"Cancel" style: UIAlertActionStyleCancel handler:nil]];

    //UIViewController *customVC     = [[ProgressViewController alloc] init];
    UIViewController *customVC     = [[UIViewController alloc] init];

    UIActivityIndicatorView* spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [spinner startAnimating];
    [customVC.view addSubview:spinner];


    [customVC.view addConstraint:[NSLayoutConstraint
                           constraintWithItem: spinner
                           attribute:NSLayoutAttributeCenterX
                           relatedBy:NSLayoutRelationEqual
                           toItem:customVC.view
                           attribute:NSLayoutAttributeCenterX
                           multiplier:1.0f
                           constant:0.0f]];



    [customVC.view addConstraint:[NSLayoutConstraint
                           constraintWithItem: spinner
                           attribute:NSLayoutAttributeCenterY
                           relatedBy:NSLayoutRelationEqual
                           toItem:customVC.view
                           attribute:NSLayoutAttributeCenterY
                           multiplier:1.0f
                           constant:0.0f]];

    [alert setValue:customVC forKey:@"contentViewController"];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        if (viewController != nil) {
            [viewController presentViewController:alert animated:YES completion:nil];
        }
    });
    return 0;
}
