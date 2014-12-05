//
//  Functions.m
//  PCC GPA Calc
//
//  Created by James Enciso on 8/31/14.
//  Copyright 2014 __MyCompanyName__. All rights reserved.
//

#import "Functions.h"



@implementation Functions
@synthesize grade1selector,
grade2selector,
grade3selector,
grade4selector,
grade5selector,
units1selector,
units2selector,
units3selector,
units4selector,
units5selector,
calculateGPAbutton, GPAoutputBox;

-(IBAction)calculateGPA:(id)sender{

	/*
	float gpav, gradepoints, units, class1unitsv,class2unitsv,class3unitsv,class4unitsv,class5unitsv,class1gradev,class2gradev,class3gradev,class4gradev,class5gradev;
	
	class1unitsv = [class1units floatValue];
	class2unitsv = [class2units floatValue];
	class3unitsv = [class3units floatValue];
	class4unitsv = [class4units floatValue];
	class5unitsv = [class5units floatValue];
	class1gradev = [class1grade floatValue];
	class2gradev = [class2grade floatValue];
	class3gradev = [class3grade floatValue];
	class4gradev = [class4grade floatValue];
	class5gradev = [class5grade floatValue];
	
	units = class1unitsv + class2unitsv + class3unitsv + class4unitsv + class5unitsv;
	
	gradepoints = 	(class1gradev * class1unitsv)+(class2gradev * class2unitsv) +(class3gradev * class3unitsv)+(class4gradev * class4unitsv)+(class5gradev * class5unitsv);
	
	gpav = gradepoints / units;
	
	[gpa setFloatValue:gpav];

	 */
	
	float gpav, gradepoints, units, class1unitsv,class2unitsv,class3unitsv,class4unitsv,class5unitsv,class1gradev,class2gradev,class3gradev,class4gradev,class5gradev;
	
	class1unitsv = [self getUnitValue:1];
	class2unitsv = [self getUnitValue:2];
	class3unitsv = [self getUnitValue:3];
	class4unitsv = [self getUnitValue:4];
	class5unitsv = [self getUnitValue:5];
	class1gradev = [self getGradeValue:1];
	class2gradev = [self getGradeValue:2];
	class3gradev = [self getGradeValue:3];
	class4gradev = [self getGradeValue:4];
	class5gradev = [self getGradeValue:5];
	
	units = class1unitsv + class2unitsv + class3unitsv + class4unitsv + class5unitsv;
	
	gradepoints = 	(class1gradev * class1unitsv)+(class2gradev * class2unitsv) +(class3gradev * class3unitsv)+(class4gradev * class4unitsv)+(class5gradev * class5unitsv);
	
	gpav = gradepoints / units;
	
	[GPAoutputBox setStringValue:[NSString stringWithFormat:@"%.3f", gpav]];
	
	
	
	
	
	
	 
}

//takes in the class number and outputs the value of the units
-(int)getUnitValue:(int)classNumber{


	
	int returnValue = 0;
	
	switch (classNumber) {
		case 1:
			NSLog(@"Class1Selected");

			switch (units1selector.indexOfSelectedItem) {
				case 1:
					returnValue = 1;
					break;
				case 2:
					returnValue = 2;
					
					break;
				case 3:
					returnValue = 3;
					
					break;
				case 4:
					returnValue = 4;
					
					break;
				case 5:
					returnValue = 5;
					
					break;
				default:
					returnValue = 0;
					break;
			}
			
			
			break;
		case 2:
			NSLog(@"Class2Selected");

			switch (units2selector.indexOfSelectedItem) {
				case 1:
					returnValue = 1;
					break;
				case 2:
					returnValue = 2;
					
					break;
				case 3:
					returnValue = 3;
					
					break;
				case 4:
					returnValue = 4;
					
					break;
				case 5:
					returnValue = 5;
					
					break;
				default:
					returnValue = 0;
					break;
			}
			
			
			break;
		case 3:
			NSLog(@"Class3Selected");

			switch (units3selector.indexOfSelectedItem) {
				case 1:
					returnValue = 1;
					break;
				case 2:
					returnValue = 2;
					
					break;
				case 3:
					returnValue = 3;
					
					break;
				case 4:
					returnValue = 4;
					
					break;
				case 5:
					returnValue = 5;
					
					break;
				default:
					returnValue = 0;
					break;
			}
			
			break;
		case 4:
			NSLog(@"Class4Selected");

			switch (units4selector.indexOfSelectedItem) {
				case 1:
					returnValue = 1;
					break;
				case 2:
					returnValue = 2;
					
					break;
				case 3:
					returnValue = 3;
					
					break;
				case 4:
					returnValue = 4;
					
					break;
				case 5:
					returnValue = 5;
					
					break;
				default:
					returnValue = 0;
					break;
			}
			
			break;
		case 5:
			NSLog(@"Class5Selected");

			switch (units5selector.indexOfSelectedItem) {
				case 1:
					returnValue = 1;
					break;
				case 2:
					returnValue = 2;
					
					break;
				case 3:
					returnValue = 3;
					
					break;
				case 4:
					returnValue = 4;
					
					break;
				case 5:
					returnValue = 5;
					
					break;
				default:
					returnValue = 0;
					break;
			}
			
			break;
		default:
			break;
	}
	
	

	
	return returnValue;
	
}

//takes in the class number and outputs the value of the grade as integer
-(int)getGradeValue:(int)classNumber{


	int returnValue = 0;
	
	switch (classNumber) {
		case 1:
			NSLog(@"Class1Selected");
			
			switch (grade1selector.indexOfSelectedItem) {
				case 1:
					//A
					returnValue = 4;
					break;
					//B
				case 2:
					returnValue = 3;
					break;
				case 3:
					//C
					returnValue = 2;
					break;
				case 4:
					//D
					returnValue = 1;
					break;
				case 5:
					//F
					returnValue = 0;
					
					break;
				default:
					returnValue = 0;
					break;
			}
			
			
			break;
		case 2:
			NSLog(@"Class2Selected");
			
			switch (grade2selector.indexOfSelectedItem) {
				case 1:
					//A
					returnValue = 4;
					break;
					//B
				case 2:
					returnValue = 3;
					break;
				case 3:
					//C
					returnValue = 2;
					break;
				case 4:
					//D
					returnValue = 1;
					break;
				case 5:
					//F
					returnValue = 0;
					
					break;
				default:
					returnValue = 0;
					break;
			}
			
			
			break;
		case 3:
			NSLog(@"Class3Selected");
			
			switch (grade3selector.indexOfSelectedItem) {
				case 1:
					//A
					returnValue = 4;
					break;
					//B
				case 2:
					returnValue = 3;
					break;
				case 3:
					//C
					returnValue = 2;
					break;
				case 4:
					//D
					returnValue = 1;
					break;
				case 5:
					//F
					returnValue = 0;
					
					break;
				default:
					returnValue = 0;
					break;
			}
			
			break;
		case 4:
			NSLog(@"Class4Selected");
			
			switch (grade4selector.indexOfSelectedItem) {
				case 1:
					//A
					returnValue = 4;
					break;
					//B
				case 2:
					returnValue = 3;
					break;
				case 3:
					//C
					returnValue = 2;
					break;
				case 4:
					//D
					returnValue = 1;
					break;
				case 5:
					//F
					returnValue = 0;
					
					break;
				default:
					returnValue = 0;
					break;
			}
			
			break;
		case 5:
			NSLog(@"Class5Selected");
			
			switch (grade5selector.indexOfSelectedItem) {
				case 1:
					//A
					returnValue = 4;
					break;
					//B
				case 2:
					returnValue = 3;
					break;
				case 3:
					//C
					returnValue = 2;
					break;
				case 4:
					//D
					returnValue = 1;
					break;
				case 5:
					//F
					returnValue = 0;
					
					break;
				default:
					returnValue = 0;
					break;
			}
			
			break;
		default:
			break;
	}
	
	
	
	
	return returnValue;
	
	
}
//resets all fields to initial settings
-(IBAction)clearFields:(id)sender{

	
	[units1selector selectItemAtIndex:0];
	[units2selector selectItemAtIndex:0];
	[units3selector selectItemAtIndex:0];
	[units4selector selectItemAtIndex:0];
	[units5selector selectItemAtIndex:0];

	
	[grade1selector selectItemAtIndex:0];
	[grade2selector selectItemAtIndex:0];
	[grade3selector selectItemAtIndex:0];
	[grade4selector selectItemAtIndex:0];
	[grade5selector selectItemAtIndex:0];
	
	[GPAoutputBox setStringValue:@""];
	
	
}



@end
