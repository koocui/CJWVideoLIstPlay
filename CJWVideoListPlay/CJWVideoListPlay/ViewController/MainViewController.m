//
//  MainViewController.m
//  CJWVideoListPlay
//
//  Created by 小崔 on 2018/4/18.
//  Copyright © 2018年 CJW. All rights reserved.
//

#import "MainViewController.h"
#import "CJWPlayerScrollView.h"
#import "VideoDataModel.h"
#import <KSYMediaPlayer/KSYMediaPlayer.h>

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


@interface MainViewController ()
@property(nonatomic,strong) KSYMoviePlayerController * player;
@property(nonatomic,strong) CJWPlayerScrollView * playerScrollView;

@end

@implementation MainViewController
//懒加载
-(CJWPlayerScrollView *)playerScrollView{
    if (!_playerScrollView){
        _playerScrollView = [[CJWPlayerScrollView alloc]initWithFrame:self.view.frame];
    }
    return  _playerScrollView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
