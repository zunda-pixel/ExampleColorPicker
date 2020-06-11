#include "ECPRootListController.h"
#import <Preferences/PSSpecifier.h>

@implementation ECPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

@end
