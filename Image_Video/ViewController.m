//
//  ViewController.m
//  Image_Video
//
//  Created by Johnny Caraveo on 12/12/13.
//  Copyright (c) 2013 Johnny Caraveo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
UIImage *chosenImage;
UIImage *originalImage;
BOOL video;
NSString *mediaType;
NSString *sourcePath;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    if (video == false)
    {
        chosenImage = info[UIImagePickerControllerEditedImage];
        originalImage = info[UIImagePickerControllerOriginalImage];
        [picker dismissViewControllerAnimated:YES completion:^{
            [self performSegueWithIdentifier: @"imageSave" sender: self];
        }];
    }else{
        NSLog(@"This is a videoSave.");
    
        mediaType = [info objectForKey:UIImagePickerControllerMediaType];
        if ([mediaType isEqualToString:@"public.movie"]){
            sourcePath = [[info objectForKey:@"UIImagePickerControllerMediaURL"]relativePath];
        }
        
        [picker dismissViewControllerAnimated:YES completion:^{
            [self performSegueWithIdentifier: @"videoSave" sender: self];
        }];

    }
    

}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"imageSave"]) {
        
        ImageSaveViewController *destViewController = segue.destinationViewController;
        
        destViewController.editedImage = chosenImage;
        destViewController.originalImage1 = originalImage;
    }else if([segue.identifier isEqualToString:@"videoSave"]){
        VideoSaveViewController *destViewController = segue.destinationViewController;
        
        destViewController.sourcePath = sourcePath;
    }
}


- (IBAction)recordVideo:(id)sender {
    video = true;
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    picker.mediaTypes = [[NSArray alloc] initWithObjects: (NSString *) kUTTypeMovie, nil];
    
    [self presentViewController:picker animated:YES completion:NULL];
    
    
    
}

- (IBAction)onGallery:(id)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:NULL];
}
- (IBAction)takePhoto:(id)sender {
    video = false;
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
}


@end
