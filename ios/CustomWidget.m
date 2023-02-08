#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(CustomWidget, NSObject)

RCT_EXTERN_METHOD(multiply:(float)a withB:(float)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(reloadAllTimelines)
RCT_EXTERN_METHOD(reloadTimelines:(NSString *)ofKind)
RCT_EXTERN_METHOD(getStringItem:(NSString *)key withAppGroup:(NSString *)appGroup withResolver:(RCTPromiseResolveBlock)resolve withRejecter:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(setItem:(NSString *)key withValue:(NSString *)value withAppGroup:(NSString *)appGroup withResolver:(RCTPromiseResolveBlock)resolve withRejecter:(RCTPromiseRejectBlock)reject)


+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

@end
