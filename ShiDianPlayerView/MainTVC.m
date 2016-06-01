//
//  MainTVC.m
//  ShiDianPlayerView
//
//  Created by Charlin on 16/6/1.
//  Copyright © 2016年 Charlin. All rights reserved.
//

#import "MainTVC.h"
#import "BaseVC.h"
#import "ListVC.h"


@interface MainTVC ()

@property (nonatomic,strong) NSArray *dataList;

@end

@implementation MainTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataList = @[@"基本使用", @"列表复用"];
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.dataList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"rid"];
    
    cell.textLabel.text = self.dataList[indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIViewController *vc = nil;
    

    if (indexPath.row == 0){
    
        vc = [[BaseVC alloc] initWithNibName:@"BaseVC" bundle:nil];
        
        
        
    }else {
    
        vc = [[ListVC alloc] init];
    }
    
    vc.title = self.dataList[indexPath.row];
    
    [self.navigationController pushViewController:vc animated:YES];
}


@end
