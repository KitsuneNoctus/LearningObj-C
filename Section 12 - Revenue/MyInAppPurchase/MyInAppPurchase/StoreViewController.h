//
//  StoreViewController.h
//  MyInAppPurchase
//
//  Created by Henry Calderon on 11/21/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StoreViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *productTitle;
@property (weak, nonatomic) IBOutlet UITextView *productDescription;
@property (weak, nonatomic) IBOutlet UIButton *purchaseBUtton;

- (IBAction)purchase:(id)sender;
- (IBAction)restore:(id)sender;


@end

NS_ASSUME_NONNULL_END
