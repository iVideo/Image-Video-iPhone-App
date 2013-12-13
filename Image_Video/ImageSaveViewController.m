//
//  ImageSaveViewController.m
//  Image_Video
//
//  Created by Jonathan Caraveo on 12/12/13.
//  Copyright (c) 2013 Johnny Caraveo. All rights reserved.
//

#import "ImageSaveViewController.h"

@interface ImageSaveViewController ()


@end

@implementation ImageSaveViewController


@synthesize imageView, editedImage, originalImage1, originalImage;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    imageView.image = editedImage;
    originalImage.image = originalImage1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSave:(id)sender {
    UIImageWriteToSavedPhotosAlbum(editedImage, nil, nil, nil);
    UIImageWriteToSavedPhotosAlbum(originalImage1, nil, nil, nil);
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success" message:@"Both images have been saved to photo album." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}



- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}


- (IBAction)onCancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
