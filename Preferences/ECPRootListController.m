#include "ECPRootListController.h"
#import <Preferences/PSSpecifier.h>
//#import <Cephei/HBPreferences.h>
//#import <Cephei/HBRespringController.h>

@implementation ECPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

@end
