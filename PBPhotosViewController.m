//
//  PBPhotosViewController.m
//  Photo Bombes
//
//  Created by Collin Hartigan on 5/13/14.
//  Copyright (c) 2014 Collin Hartigan. All rights reserved.
//

#import "PBPhotosViewController.h"
#import "PBPhotoCell.h"

@interface PBPhotosViewController ()

@end

@implementation PBPhotosViewController

-(instancetype)init {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(106.0, 106.0);
    layout.minimumInteritemSpacing = 1;
    layout.minimumLineSpacing = 1.1;
    return (self = [super initWithCollectionViewLayout:layout]);
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Photo Bombers";
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:[PBPhotoCell class] forCellWithReuseIdentifier:@"photo"];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.flatdoc.com"];
    
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    
    NSURLSessionDownloadTask *task = [session downloadTaskWithRequest:request completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
        NSString *text = [[NSString alloc] initWithContentsOfURL:location encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"Response: %@", text);
    }];
    
    [task resume];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"photo" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor grayColor];
    
    return cell;
}

@end
