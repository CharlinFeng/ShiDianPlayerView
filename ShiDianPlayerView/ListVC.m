//
//  ListVC.m
//  ShiDianPlayerView
//
//  Created by Charlin on 16/6/1.
//  Copyright © 2016年 Charlin. All rights reserved.
//

#import "ListVC.h"
#import "ListCell.h"

@interface ListVC ()

@property (nonatomic,strong) NSArray *dataList;

@end

@implementation ListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataList = @[
                      
                      @"/Users/charlin/Desktop/1.mov",
                      @"/Users/charlin/Downloads/1.mp4",
                      @"/Users/charlin/Downloads/2.mp4",
                      @"/Users/charlin/Downloads/3.mp4",
                      @"/Users/charlin/Downloads/4.mp4",
                      @"/Users/charlin/Downloads/5.mp4",
    ];
    
    self.tableView.rowHeight = [UIScreen mainScreen].bounds.size.height;
}


#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *rid = @"ListCell";
    
    ListCell *cell = [tableView dequeueReusableCellWithIdentifier:rid];
    
    if (cell == nil){
        cell = [[NSBundle mainBundle] loadNibNamed:@"ListCell" owner:nil options:nil].lastObject;
    }
    
    cell.cellVideoPlayerView.videoURLStr = self.dataList[indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ListCell *c = (ListCell *)cell;
    [c.cellVideoPlayerView reset];
    
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ListCell *c = (ListCell *)cell;
    [c.cellVideoPlayerView reset];
}

@end
