import WidgetKit

@objc(CustomWidget)
class CustomWidget: NSObject {

  @objc(multiply:withB:withResolver:withRejecter:)
  func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
    resolve(a*b)
  }
    
@objc(reloadAllTimelines)
   func reloadAllTimelines() -> Void {
       if #available(iOS 14.0, *) {
           #if arch(arm64) || arch(i386) || arch(x86_64)
               WidgetCenter.shared.reloadAllTimelines()
           #endif
       }
   }

    @objc(reloadTimelines:)
   func reloadTimelines(ofKind: String) -> Void {
       if #available(iOS 14.0, *) {
           #if arch(arm64) || arch(i386) || arch(x86_64)
               WidgetCenter.shared.reloadTimelines(ofKind: ofKind)
           #endif
       }
   }
    
    @objc(getStringItem:withAppGroup:withResolver:withRejecter:)
    func getStringItem(key: String, appGroup: String, resolve: RCTPromiseResolveBlock,reject: RCTPromiseRejectBlock) -> Void {
        var sharedDefaults: UserDefaults? = nil;
        
        if(appGroup != "") {
            sharedDefaults = UserDefaults.init(suiteName: appGroup)
        }
        
        if(sharedDefaults == nil) {
            resolve(nil)
            return
        }
        
        let value = sharedDefaults?.string(forKey: key)
        resolve(value);
    }
    
    @objc(getBoolItem:withAppGroup:withResolver:withRejecter:)
    func getBoolItem(key: String, appGroup: String, resolve: RCTPromiseResolveBlock,reject: RCTPromiseRejectBlock) -> Void {
        var sharedDefaults: UserDefaults? = nil;
        
        if(appGroup != "") {
            sharedDefaults = UserDefaults.init(suiteName: appGroup)
        }
        
        if(sharedDefaults == nil) {
            resolve(nil)
            return
        }
        
        let value = sharedDefaults?.bool(forKey: key)
        resolve(value);
    }
    
    @objc(getArrayItem:withAppGroup:withResolver:withRejecter:)
    func getArrayItem(key: String, appGroup: String, resolve: RCTPromiseResolveBlock,reject: RCTPromiseRejectBlock) -> Void {
        var sharedDefaults: UserDefaults? = nil;
        
        if(appGroup != "") {
            sharedDefaults = UserDefaults.init(suiteName: appGroup)
        }
        
        if(sharedDefaults == nil) {
            resolve(nil)
            return
        }
        
        let value = sharedDefaults?.array(forKey: key)
        resolve(value);
    }
    
    
    @objc(getArrayItem:withAppGroup:withResolver:withRejecter:)
    func getArrayItem(key: String, appGroup: String, resolve: RCTPromiseResolveBlock,reject: RCTPromiseRejectBlock) -> Void {
        var sharedDefaults: UserDefaults? = nil;
        
        if(appGroup != "") {
            sharedDefaults = UserDefaults.init(suiteName: appGroup)
        }
        
        if(sharedDefaults == nil) {
            resolve(nil)
            return
        }
        
        let value = sharedDefaults?.array(forKey: key)
        resolve(value);
    }

   @objc(setItem:withValue:withAppGroup:withResolver:withRejecter:)
   func setItem(key: String, value: String, appGroup: String, resolve: RCTPromiseResolveBlock,reject: RCTPromiseRejectBlock) -> Void {
       var sharedDefaults: UserDefaults? = nil;
       
       if(appGroup != "") {
           sharedDefaults = UserDefaults.init(suiteName: appGroup)
       }
       
       if(sharedDefaults == nil) {
           resolve(nil)
           return
       }
       
       sharedDefaults?.setValue(value, forKey: key)
       resolve(nil)
   }


   @objc
   static func requiresMainQueueSetup() -> Bool {
       return true
   }
}
