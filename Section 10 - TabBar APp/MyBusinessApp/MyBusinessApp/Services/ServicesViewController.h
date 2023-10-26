//
//  ServicesViewController.h
//  MyBusinessApp
//
//  Created by Henry Calderon on 10/26/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ServicesViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;

@property(strong, nonatomic) NSString *detail;

@end

NS_ASSUME_NONNULL_END
