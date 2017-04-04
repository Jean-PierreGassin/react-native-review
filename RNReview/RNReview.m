#import "RNReview.h"
#import "RCTUtils.h"
#import <React/RCTLog.h>
#import <StoreKit/SKStoreReviewController.h>

@implementation RNReview

-(NSString *) getDirectory:(int)directory {
    return [NSSearchPathForDirectoriesInDomains(directory, NSUserDomainMask, YES) firstObject];
}

RCT_EXPORT_MODULE();

-(NSDictionary *)constantsToExport {
    return @{
        @"IsAndroid": [NSNumber numberWithBool:NO],
        @"MainBundlePath": [[NSBundle mainBundle] bundlePath],
        @"NSDocumentDirectory": [self getDirectory:NSDocumentDirectory],
        @"NSLibraryDirectory": [self getDirectory:NSLibraryDirectory],
        @"NSCachesDirectory": [self getDirectory:NSCachesDirectory],
    };
}


RCT_EXPORT_METHOD(requestReview) {
    [SKStoreReviewController requestReview];
}

@end
