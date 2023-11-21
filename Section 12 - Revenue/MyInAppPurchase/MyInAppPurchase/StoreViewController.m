//
//  StoreViewController.m
//  MyInAppPurchase
//
//  Created by Henry Calderon on 11/21/23.
//

#import "StoreViewController.h"

@interface StoreViewController ()

@end

@implementation StoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.productID = @"PRODUCT_ID";
    self.purchaseBUtton.enabled = NO;
    
    [self getPurchaseID];
}

-(void)getPurchaseID {
    if ([SKPaymentQueue canMakePayments]) {
        SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:[NSSet setWithObject:self.productID]];
        request.delegate = self;
        [request start];
    }
    else {
        self.productDescription.text = @"Please enable IAP in your settings";
    }
}

-(void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response {
    NSArray *products = response.products;
    if (products.count != 0) {
        self.product = products[0];
        self.purchaseBUtton.enabled = YES;
        
        self.productTitle.text = self.product.localizedTitle;
        self.productDescription.text = self.product.localizedDescription;
    }
    else {
        self.productDescription.text = @"Product Not Found";
    }
    
    products = response.invalidProductIdentifiers;
    for (SKProduct *product in products) {
        NSLog(@"%@", product);
    }
}

- (IBAction)restore:(id)sender {
}

- (IBAction)purchase:(id)sender {
}
@end
