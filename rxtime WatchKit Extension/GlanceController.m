//
//  GlanceController.m
//  rxtime WatchKit Extension
//
//  Created by Zouhair Mahieddine on 11/23/14.
//  Copyright (c) 2014 Zedenem. All rights reserved.
//

#import "GlanceController.h"


@interface GlanceController()

@property (weak, nonatomic) IBOutlet WKInterfaceImage *firstPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *secondPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *thirdPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *fourthPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *fifthPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *sixthPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *seventhPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *eighthPillImage;

@end


@implementation GlanceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
  [self reloadData];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

//MARK: - Populate Table View
- (void)reloadData {
  NSArray *pills = @[@{@"name": @"Aspirin", @"image": @"Aspirin"},
                     @{@"name": @"Clopidogrel", @"image": @"Clopidogrel"},
                     @{@"name": @"Hydrochlorathiazide", @"image": @"Hydrochlorathiazide copy"},
                     @{@"name": @"Lisinopril", @"image": @"dailymed-09"},
                     @{@"name": @"Metoprolol", @"image": @"dailymed-08"},
                     @{@"name": @"Simvastatin", @"image": @"Simvastatin"},
                     @{@"name": @"Warfarin", @"image": @"Warfarin"}];
  
  for (int i = 0; i < pills.count; i++) {
    NSDictionary *pill = pills[i];
    
    WKInterfaceImage *currentTodayImage = nil;
    switch (i) {
      case 0:
        currentTodayImage = self.firstPillImage;
        break;
      case 1:
        currentTodayImage = self.secondPillImage;
        break;
      case 2:
        currentTodayImage = self.thirdPillImage;
        break;
      case 3:
        currentTodayImage = self.fourthPillImage;
        break;
      case 4:
        currentTodayImage = self.fifthPillImage;
        break;
      case 5:
        currentTodayImage = self.sixthPillImage;
        break;
      case 6:
        currentTodayImage = self.seventhPillImage;
        break;
      case 7:
        currentTodayImage = self.eighthPillImage;
        break;
    }
    
    [currentTodayImage setImageNamed:pill[@"image"]];
  }
}

@end



