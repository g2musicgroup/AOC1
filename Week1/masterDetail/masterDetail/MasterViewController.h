//
//  MasterViewController.h
//  masterDetail
//
//  Created by Gawain Bracy II on 11/22/12.
//  Copyright (c) 2012 Gawain Bracy II. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
