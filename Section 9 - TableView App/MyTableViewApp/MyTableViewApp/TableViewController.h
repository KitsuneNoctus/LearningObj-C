//
//  TableViewController.h
//  MyTableViewApp
//
//  Created by Henry Calderon on 10/11/23.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UITableViewController {
    NSArray *title;
    NSArray *description;
    NSArray *image;
}



@end

NS_ASSUME_NONNULL_END
