//
//  WKPillTableRowController.h
//  rxtime
//
//  Created by Zouhair Mahieddine on 11/23/14.
//  Copyright (c) 2014 Zedenem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface WKPillTableRowController : NSObject

@property (weak, nonatomic) IBOutlet WKInterfaceImage *pillImage;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *pillLabel;

@end
