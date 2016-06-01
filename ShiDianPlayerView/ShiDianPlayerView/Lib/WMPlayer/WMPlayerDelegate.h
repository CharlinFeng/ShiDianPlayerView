//
//  WMPlayerDelegate.h
//  ShiDianPlayerView
//
//  Created by Charlin on 16/6/1.
//  Copyright © 2016年 Charlin. All rights reserved.
//

#ifndef WMPlayerDelegate_h
#define WMPlayerDelegate_h

#import <Foundation/Foundation.h>

@protocol WMPlayerDelegate <NSObject>

/** 播放继续 */
-(void)player_didPlay;

/** 播放暂停 */
-(void)player_didPause;

/** 播放完成 */
-(void)player_didFinished;

/** 播放重置 */
-(void)player_didReset;

@end


#endif
/* WMPlayerDelegate_h */
