#import <Cordova/CDV.h>

@interface TextScale : CDVPlugin
- (void)getTextScale:(CDVInvokedUrlCommand*)command;
@end

@implementation TextScale

- (void)getTextScale:(CDVInvokedUrlCommand*)command {
    CGFloat scale = [[UIApplication sharedApplication] preferredContentSizeCategory].floatValue;
    
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDouble:scale];
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
// This code is for iOS and retrieves the text scale setting from the device.