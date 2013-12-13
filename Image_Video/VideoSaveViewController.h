//
//  VideoSaveViewController.h
//  Image_Video
//
//  Created by Jonathan Caraveo on 12/12/13.
//  Copyright (c) 2013 Johnny Caraveo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VideoSaveViewController : UIViewController
- (IBAction)onSave:(id)sender;
- (IBAction)onCancel:(id)sender;
@property NSString *sourcePath;

@end
