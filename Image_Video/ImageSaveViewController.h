//
//  ImageSaveViewController.h
//  Image_Video
//
//  Created by Jonathan Caraveo on 12/12/13.
//  Copyright (c) 2013 Johnny Caraveo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageSaveViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *originalImage;
@property UIImage *editedImage;
@property UIImage *originalImage1;

- (IBAction)onSave:(id)sender;
- (IBAction)onCancel:(id)sender;

@end
