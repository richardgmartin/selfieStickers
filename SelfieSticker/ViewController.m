//
//  ViewController.m
//  SelfieSticker
//
//  Created by Richard Martin on 2016-01-21.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "ViewController.h"
#import "Sticker.h"


@interface ViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property Sticker *specView;

@property Sticker *whiskerView;


@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    self.specView = [[Sticker alloc]initWithImage:[UIImage imageNamed:@"glasses"]];
    
    [self.view addSubview:self.specView];
    
    self.specView.center = self.view.center;
    
    
    self.whiskerView = [[Sticker alloc]initWithImage:[UIImage imageNamed:@"whiskers"]];
    
    [self.view addSubview:self.whiskerView];
    
    self.whiskerView.center = self.view.center;


}

- (IBAction)onTakePhotoPressed:(UIButton *)sender {
    
    UIImagePickerController *picker = [UIImagePickerController new];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:nil];
    
}


- (IBAction)onChoosePhotoPressed:(UIButton *)sender {
    
    UIImagePickerController *picker = [UIImagePickerController new];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(nonnull NSDictionary<NSString *,id> *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imageView.image = chosenImage;
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}


@end
