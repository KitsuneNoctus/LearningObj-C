//
//  StoreViewController.h
//  MyInAppPurchase
//
//  Created by Henry Calderon on 11/21/23.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StoreViewController : UIViewController <SKPaymentTransactionObserver, SKProductsRequestDelegate> {
    
}

@property(strong, nonatomic) SKProduct *product;
@property(strong, nonatomic) NSString *productID;

@property (weak, nonatomic) IBOutlet UILabel *productTitle;
@property (weak, nonatomic) IBOutlet UITextView *productDescription;
@property (weak, nonatomic) IBOutlet UIButton *purchaseBUtton;

- (IBAction)purchase:(id)sender;
- (IBAction)restore:(id)sender;


@end

NS_ASSUME_NONNULL_END
