//
//  ViewController.h
//  UIPickerViews
//
//  Created by Henry Calderon on 9/8/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray *array;
}

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;




@end

