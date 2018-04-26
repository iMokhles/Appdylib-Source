#import <Foundation/Foundation.h>

@interface NSBundle ()
- (NSString *)apples_bundleIdentifier;
- (NSMutableDictionary *)apples_infoDictionary;
@end

static NSString *CYIdentifier = [[NSBundle mainBundle] bundleIdentifier];

%group NSBundleHooks
void H11WDLR844() {
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            
            Class nsBundleClass = objc_getClass("NSBundle");
            
            Method bundleIdentifierMethod = class_getInstanceMethod(nsBundleClass, @selector(bundleIdentifier));
            Method new_bundleIdentifierMethod = class_getInstanceMethod(nsBundleClass, @selector(apples_bundleIdentifier));
            IMP new_bundleIdentifierMethod_imp = method_getImplementation(new_bundleIdentifierMethod);
            const char *new_bundleIdentifierMethod_type = method_getTypeEncoding(new_bundleIdentifierMethod);
            class_addMethod(nsBundleClass, @selector(bundleIdentifier), new_bundleIdentifierMethod_imp, new_bundleIdentifierMethod_type);
            method_exchangeImplementations(bundleIdentifierMethod, new_bundleIdentifierMethod);
            
            Method infoDictionaryMethod = class_getInstanceMethod(nsBundleClass, @selector(infoDictionary));
            Method new_infoDictionaryMethod = class_getInstanceMethod(nsBundleClass, @selector(apples_infoDictionary));
            IMP new_infoDictionaryMethod_imp = method_getImplementation(new_infoDictionaryMethod);
            const char *new_infoDictionaryMethod_type = method_getTypeEncoding(new_infoDictionaryMethod);
            class_addMethod(nsBundleClass, @selector(infoDictionary), new_infoDictionaryMethod_imp, new_infoDictionaryMethod_type);
            method_exchangeImplementations(infoDictionaryMethod, new_infoDictionaryMethod);
            
        });
        
    });
    
    
    
}

%hook NSBundle
- (BOOL)load {
    BOOL origLoad = %orig;
    H11WDLR844();
    return origLoad;
}
- (NSString *)sc_keychainAccessIdentifier {
    NSString *currentBundle = CYIdentifier;
    
    if ([currentBundle containsString:@"othman.store.snapchat"]) {
        NSArray *arrayWithTwoStrings = [currentBundle componentsSeparatedByString:@"othman.store.snapchat"];
        NSString *subBun = arrayWithTwoStrings[1];
        NSUInteger bundleIdLength = [subBun length];
        NSString *subBundleId = [subBun substringToIndex:bundleIdLength-1];
        NSString *subBundleId2 = [subBun substringToIndex:bundleIdLength-2];
        
        BOOL isMyBundle = YES;
        if (![subBundleId containsString:@"com.toyopagroup.picaboo"]) {
            BOOL isMyBundle2 = NO;
            if ([subBundleId2 containsString:@"com.toyopagroup.picaboo"]) {
                isMyBundle2 = YES;
            }
            isMyBundle = isMyBundle2;
        }
        if (isMyBundle) {
            currentBundle = @"group.snapchat.picaboo";
        } else {
            currentBundle = %orig();
        }
    }
    return currentBundle;
}
- (NSString *)sc_groupIdentifier {
    NSString *currentBundle = CYIdentifier;
    
    if ([currentBundle containsString:@"othman.store.snapchat"]) {
        NSArray *arrayWithTwoStrings = [currentBundle componentsSeparatedByString:@"othman.store.snapchat"];
        NSString *subBun = arrayWithTwoStrings[1];
        NSString *subBun2 = subBun;
        NSUInteger bundleIdLength = [subBun2 length];
        NSString *subBundleId = [subBun2 substringToIndex:bundleIdLength-1];
        NSString *subBundleId2 = [subBun2 substringToIndex:bundleIdLength-2];
        
        BOOL isMyBundle = YES;
        if (![subBundleId containsString:@"com.toyopagroup.picaboo"]) {
            BOOL isMyBundle2 = NO;
            if ([subBundleId2 containsString:@"com.toyopagroup.picaboo"]) {
                isMyBundle2 = YES;
            }
            isMyBundle = isMyBundle2;
        }
        if (isMyBundle) {
            currentBundle = @"3MY7A92V5W.com.toyopagroup.picaboo";
        } else {
            currentBundle = %orig();
        }
    }
    
    return currentBundle;
}
%new()
- (id)apples_infoDictionary {
    
    NSMutableDictionary *infoMutable = [self apples_infoDictionary];
    NSString *currentBundle = [infoMutable objectForKey:@"CFBundleIdentifier"];
    if ([currentBundle containsString:@"othman.store.snapchat"]) {
        NSArray *arrayWithTwoStrings = [currentBundle componentsSeparatedByString:@"othman.store.snapchat"];
        NSString *subBun = arrayWithTwoStrings[1];
        NSString *subBun2 = subBun;
        NSUInteger bundleIdLength = [subBun2 length];
        NSString *subBundleId = [subBun2 substringToIndex:bundleIdLength-2];
        NSString *subBundleId2 = [subBun2 substringToIndex:bundleIdLength-3];
        
        BOOL isMyBundle = YES;
        if (![subBundleId containsString:@"com.toyopagroup.picaboo"]) {
            BOOL isMyBundle2 = NO;
            if ([subBundleId2 containsString:@"com.toyopagroup.picaboo"]) {
                isMyBundle2 = YES;
            }
            isMyBundle = isMyBundle2;
        }
        if (isMyBundle) {
            currentBundle = @"com.toyopagroup.picaboo";
            [infoMutable setObject:currentBundle forKey:@"CFBundleIdentifier"];
            
        }
    }
    return infoMutable;
}
%new()
- (id)apples_bundleIdentifier {
    NSString *currentBundle = [self apples_bundleIdentifier];
    if ([currentBundle containsString:@"othman.store.snapchat"]) {
        NSArray *arrayWithTwoStrings = [currentBundle componentsSeparatedByString:@"othman.store.snapchat"];
        NSString *subBun = arrayWithTwoStrings[1];
        NSString *subBun2 = subBun;
        NSUInteger bundleIdLength = [subBun2 length];
        NSString *subBundleId = [subBun2 substringToIndex:bundleIdLength-2];
        NSString *subBundleId2 = [subBun2 substringToIndex:bundleIdLength-3];
        BOOL isMyBundle = YES;
        if (![subBundleId containsString:@"com.toyopagroup.picaboo"]) {
            BOOL isMyBundle2 = NO;
            if ([subBundleId2 containsString:@"com.toyopagroup.picaboo"]) {
                isMyBundle2 = YES;
            }
            isMyBundle = isMyBundle2;
        }
        if (isMyBundle) {
            currentBundle = @"com.toyopagroup.picaboo";
        }
    }
    return currentBundle;
}
%end
%end

%ctor {
    %init(NSBundleHooks);
}
