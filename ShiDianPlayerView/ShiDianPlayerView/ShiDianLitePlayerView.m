//
//  ShiDianLitePlayerView.m
//  ShiDianPlayerView
//
//  Created by Charlin on 16/6/1.
//  Copyright © 2016年 Charlin. All rights reserved.
//

#import "ShiDianLitePlayerView.h"

@interface ShiDianLitePlayerView ()

@property (nonatomic,weak) UIButton *playBtn;

@end

@implementation ShiDianLitePlayerView

-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if(self){
        
        //视图准备
        [self viewPrepare_sub];
    }
    
    return self;
}


-(id)initWithCoder:(NSCoder *)aDecoder{
    
    self=[super initWithCoder:aDecoder];
    
    if(self){
        
        //视图准备
        [self viewPrepare_sub];
    }
    
    return self;
}



/*
 *  视图准备
 */
-(void)viewPrepare_sub{
    
    //隐藏各种条
    self.progressSlider.hidden = YES;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.playBtn = btn;
    
    [btn setImage:[UIImage imageNamed:@"WMPlayer.bundle/play1"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(playAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:btn];
    
    __weak typeof(self) weakSelf=self;
    
    self.PlayBlock = ^{
        weakSelf.playBtn.hidden = YES;
    };
    
    self.PauseBlock = ^{
        weakSelf.playBtn.hidden = NO;
    };
    
    self.FinishBlock = ^{
        weakSelf.playBtn.hidden = NO;
    };
    
    self.ResetBlock = ^{
        weakSelf.playBtn.hidden = NO;
    };
}

-(void)playAction{
    [self play];
    self.playBtn.hidden = YES;
}


-(void)layoutSubviews{
    
    [super layoutSubviews];
    
    self.playBtn.frame = self.bounds;
}

@end
