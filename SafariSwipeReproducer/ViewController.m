//
//  ViewController.m
//  SafariSwipeReproducer
//
//  Created by Julian Weiss on 12/18/15.
//  Copyright © 2015 Julian Weiss. All rights reserved.
//

#import "ViewController.h"
#import <SafariServices/SafariServices.h>

@interface ViewController ()

@property (strong, nonatomic) NSArray *exampleURLs;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    self.title = @"SafariSwipeReproducer";
    
    _exampleURLs = @[[NSURL URLWithString:@"https://github.com/insanj"],
                     [NSURL URLWithString:@"http://insanj.com/submarine"],
                     [NSURL URLWithString:@"https://www.youtube.com/watch?v=o4bEwg5dB60"],
                     [NSURL URLWithString:@"https://angel.co/jobs"],
                     [NSURL URLWithString:@"https://soundcloud.com/50_cent/too-rich"],
                     [NSURL URLWithString:@"http://www.imdb.com/name/nm0000138/awards"],
                     [NSURL URLWithString:@"http://fantasy.nfl.com"]];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return section == 0 ? 1 : _exampleURLs.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60.0;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return section == 1 ? @"Example URLs" : nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"ReproduceCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    if (indexPath.section == 0) {
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.textLabel.text = @"Tap A URL To Launch with Safari";
        cell.detailTextLabel.text = @"Try swiping to go back - it will freeze!";
    }
    
    else {
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;
        NSURL *url = _exampleURLs[indexPath.row];
        cell.textLabel.text = url.host;
        cell.detailTextLabel.text = url.absoluteString;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.section == 1) {
        NSURL *url = _exampleURLs[indexPath.row];
        SFSafariViewController *safariViewController = [[SFSafariViewController alloc] initWithURL:url];
        [self presentViewController:safariViewController animated:YES completion:NULL];
    }
}

@end
