//
//  InterfaceController.m
//  rxtime WatchKit Extension
//
//  Created by Zouhair Mahieddine on 11/23/14.
//  Copyright (c) 2014 Zedenem. All rights reserved.
//

#import "InterfaceController.h"
#import "WKPillTableRowController.h"

@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceTable *table;

@property (weak, nonatomic) IBOutlet WKInterfaceImage *firstPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *secondPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *thirdPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *fourthPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *fifthPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *sixthPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *seventhPillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *eighthPillImage;

@end


@implementation InterfaceController



- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
    }
    return self;
}

- (void)willActivate {
  [self reloadData];
}

- (void)didDeactivate {
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
  
  [self.table setNumberOfRows:pills.count withRowType:@"PillRow"];
  
  for (int i = 0; i < self.table.numberOfRows; i++) {
    NSDictionary *pill = pills[i];
    
    WKPillTableRowController *pillRow = [self.table rowControllerAtIndex:i];
    
    [pillRow.pillImage setImageNamed:pill[@"image"]];
    [pillRow.pillLabel setText:pill[@"name"]];
    
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

-(UIImage *)pillImage:(NSString *)image checked:(BOOL)checked {
  UIImage *checkmark = [UIImage imageNamed:@"dailymed-checkmark-06"];
  UIImage *pillImage = [UIImage imageNamed:image];
  CGSize size = pillImage.size;
  
  UIGraphicsBeginImageContext(pillImage.size);
  [pillImage drawInRect:CGRectMake( 0, 0, size.width, size.height)];
  [checkmark drawInRect:CGRectMake( 0, 0, size.width, size.height)];
  UIImage *destImage = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return destImage;
}

@end



