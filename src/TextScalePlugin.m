#import "TextScalePlugin.h"
#import <UIKit/UIKit.h>

@implementation TextScalePlugin

- (void)getTextScale:(CDVInvokedUrlCommand*)command
{
    if (@available(iOS 11.0, *)) {
        UIFontMetrics *bodyMetrics = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
        CGFloat scale = [bodyMetrics scaledValueForValue:1.0];
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDouble:scale];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    } else {
        // Fallback for iOS < 11.0
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDouble:1.0];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}

@end
