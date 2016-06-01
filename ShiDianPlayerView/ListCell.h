//
//  ListCell.h
//  ShiDianPlayerView
//
//  Created by Charlin on 16/6/1.
//  Copyright © 2016年 Charlin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShiDianLitePlayerView.h"

@interface ListCell : UITableViewCell

@property (weak, nonatomic) IBOutlet ShiDianLitePlayerView *cellVideoPlayerView;

@end
