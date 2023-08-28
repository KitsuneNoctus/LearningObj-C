//
//  ViewController.m
//  UIActionSheets
//
//  Created by Henry Calderon on 8/18/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)actionSheet:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title" message:@"Message" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *button1 = [UIAlertAction actionWithTitle:@"Button 1" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.label.text = @"Button 1 was pressed";
    }];
    
    UIAlertAction *button2 = [UIAlertAction actionWithTitle:@"Button 2" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.label.text = @"Button 2 was pressed";
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alert addAction:button1];
    [alert addAction:button2];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}

@end
