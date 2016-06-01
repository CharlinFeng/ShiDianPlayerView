//
//  ViewController.m
//  ShiDianPlayerView
//
//  Created by Charlin on 16/6/1.
//  Copyright © 2016年 Charlin. All rights reserved.
//

#import "BaseVC.h"
#import "ShiDianLitePlayerView.h"

@interface BaseVC ()<WMPlayerDelegate>

@property (weak, nonatomic) IBOutlet ShiDianLitePlayerView *playerView;


@end

@implementation BaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.playerView.videoURLStr = @"/Users/charlin/Downloads/1.mp4";
    
    self.playerView.delegate = self;
}

- (IBAction)playActin:(id)sender {
    [self.playerView play];
}

- (IBAction)pauseAction:(id)sender {
    [self.playerView pause];
}

- (IBAction)resetAction:(id)sender {
    [self.playerView reset];
}


-(void)player_didPlay {
    NSLog(@"开始播放");
}

-(void)player_didPause {
    NSLog(@"播放暂停");
}

-(void)player_didFinished{
    NSLog(@"播放完成");
}

@end
