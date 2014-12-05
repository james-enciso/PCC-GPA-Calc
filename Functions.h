//
//  Functions.h
//  PCC GPA Calc
//
//  Created by James Enciso on 8/31/14.
//  Copyright 2014 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Functions : NSObject {

	//grade selectors
	NSPopUpButton *grade1selector;
	NSPopUpButton *grade2selector;
	NSPopUpButton *grade3selector;
	NSPopUpButton *grade4selector;
	NSPopUpButton *grade5selector;
	
	//units selectors
	NSPopUpButton *units1selector;
	NSPopUpButton *units2selector;
	NSPopUpButton *units3selector;
	NSPopUpButton *units4selector;
	NSPopUpButton *units5selector;
	
	NSButton *calculateGPAbutton;
	NSTextField *GPAoutputBox;
}

@property (nonatomic, retain) IBOutlet NSPopUpButton *grade1selector;
@property (nonatomic, retain) IBOutlet NSPopUpButton *grade2selector;
@property (nonatomic, retain) IBOutlet NSPopUpButton *grade3selector;
@property (nonatomic, retain) IBOutlet NSPopUpButton *grade4selector;
@property (nonatomic, retain) IBOutlet NSPopUpButton *grade5selector;

@property (nonatomic, retain) IBOutlet NSPopUpButton *units1selector;
@property (nonatomic, retain) IBOutlet NSPopUpButton *units2selector;
@property (nonatomic, retain) IBOutlet NSPopUpButton *units3selector;
@property (nonatomic, retain) IBOutlet NSPopUpButton *units4selector;
@property (nonatomic, retain) IBOutlet NSPopUpButton *units5selector;


@property (nonatomic, retain) IBOutlet NSButton *calculateGPAbutton;
@property (nonatomic, retain) IBOutlet NSTextField *GPAoutputBox;

-(IBAction)calculateGPA:(id)sender;
-(int)getUnitValue:(int)classNumber;
-(int)getGradeValue:(int)classNumber;
-(IBAction)clearFields:(id)sender;

@end
