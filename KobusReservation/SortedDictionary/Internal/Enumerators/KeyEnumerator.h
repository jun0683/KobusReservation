#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#else
#import <Cocoa/Cocoa.h>
#endif


@class EntryEnumerator;


@interface KeyEnumerator : NSEnumerator {
		EntryEnumerator	*entryEnum;
	}

	- (id) initWithEnumerator: (NSEnumerator *) anEnumerator;

	- (NSArray *) allObjects;
	- (id) nextObject;

@end
