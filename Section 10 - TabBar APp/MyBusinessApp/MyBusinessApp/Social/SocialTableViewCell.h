//
//  SocialTableViewCell.h
//  MyBusinessApp
//
//  Created by Henry Calderon on 10/31/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SocialTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *cellTitle;

@end

NS_ASSUME_NONNULL_END
