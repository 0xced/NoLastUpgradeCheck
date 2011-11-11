//
//  Copyright (c) 2011 Cédric Luthi
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NoLastUpgradeCheck : NSObject
@end

@implementation NoLastUpgradeCheck

static void setLastUpgradeCheck(id self, SEL _cmd, id lastUpgradeCheck)
{
	// Do nothing!
}

+ (void) pluginDidLoad:(NSBundle *)plugin
{
	method_setImplementation(class_getInstanceMethod(NSClassFromString(@"PBXProject"), @selector(setLastUpgradeCheck:)), (IMP)setLastUpgradeCheck);
	
	NSString *pluginName = [[[plugin bundlePath] lastPathComponent] stringByDeletingPathExtension];
	NSString *version = [plugin objectForInfoDictionaryKey:@"CFBundleVersion"];
	NSString *bundleIdentifier = [[NSBundle mainBundle] bundleIdentifier];
	BOOL isXcode = [bundleIdentifier isEqualToString:@"com.apple.Xcode"] || [bundleIdentifier isEqualToString:@"com.apple.dt.Xcode"];
	if (isXcode)
		NSLog(@"%@ %@ loaded successfully", pluginName, version);
}

@end
