//
//  ViewController.m
//  SelfieSticker
//
//  Created by Richard Martin on 2016-01-21.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "ViewController.h"
#import "Sticker.h"


@interface ViewController ()

@property Sticker *stickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    self.stickerView = [[Sticker alloc]initWithImage:[UIImage imageNamed:@"glasses"]];
    
    [self.view addSubview:self.stickerView];
    
    self.stickerView.center = self.view.center;
    


}



@end
