//
//  DestinationsStackViewController.m
//  KobusReservation
//
//  Created by kim hongjun on 11. 10. 11..
//  Copyright 2011년 앱달. All rights reserved.
//

#import "DestinationsStackViewController.h"
#import "KobusReservationAppDelegate.h"
#import "RootViewController.h"
#import "StackScrollViewController.h"

@implementation DestinationsStackViewController
@synthesize selectedOrigin;

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
	return [[[[KobusReservationAppDelegate instance] destinationData] objectForKey:selectedOrigin] count];
//    return [[[[KobusReservationAppDelegate instance] destinationData] objectForKey: ] count];
	
//	selectedOrigin
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }

	
	cell.textLabel.text = [[[[[KobusReservationAppDelegate instance] destinationData] objectForKey:selectedOrigin] allValues] objectAtIndex:indexPath.row];
	cell.textLabel.textColor = [UIColor blackColor];
	
    return cell;
}


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//	OriginsStackViewController *dataViewController = [[OriginsStackViewController alloc] initWithFrame:CGRectMake(0, 0, 477, self.view.frame.size.height)];
//	[[KobusReservationAppDelegate instance].rootViewController.stackScrollViewController addViewInSlider:dataViewController invokeByController:self isStackStartView:FALSE];
//	[dataViewController release];
}


@end