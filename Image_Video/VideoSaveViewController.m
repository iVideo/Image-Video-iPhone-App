//
//  VideoSaveViewController.m
//  Image_Video
//
//  Created by Jonathan Caraveo on 12/12/13.
//  Copyright (c) 2013 Johnny Caraveo. All rights reserved.
//

#import "VideoSaveViewController.h"

@interface VideoSaveViewController ()

@end

@implementation VideoSaveViewController
@synthesize sourcePath;
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSave:(id)sender {
    UISaveVideoAtPathToSavedPhotosAlbum(sourcePath,nil,nil,nil);
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success" message:@"Video has been saved to photo album." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
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
