#import "FlutterSkeletonPlugin.h"
#import <flutter_skeleton/flutter_skeleton-Swift.h>

@implementation FlutterSkeletonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterSkeletonPlugin registerWithRegistrar:registrar];
}
@end
