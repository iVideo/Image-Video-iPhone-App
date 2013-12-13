//
//  ViewController.h
//  Image_Video
//
//  Created by Johnny Caraveo on 12/12/13.
//  Copyright (c) 2013 Johnny Caraveo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageSaveViewController.h"
#import "VideoSaveViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)recordVideo:(id)sender;
- (IBAction)onGallery:(id)sender;


@end
