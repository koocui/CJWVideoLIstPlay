//
//  MainViewController.h
//  CJWVideoListPlay
//
//  Created by 小崔 on 2018/4/18.
//  Copyright © 2018年 CJW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VideoInfoModel.h"
@interface MainViewController : UIViewController

@property (nonatomic,strong) VideoInfoModel * live;
@property (nonatomic,strong) NSMutableArray * adtaList;
@property (nonatomic,assign) NSInteger  index;

@end
