//
//  ViewController.m
//  UIDatePickerViews
//
//  Created by Henry Calderon on 9/8/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)selectADate:(id)sender {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"E, d MMM yyyy HH:mm:ss a"];
    self.label.text = [dateFormat stringFromDate:self.datePicker.date];
}

@end
