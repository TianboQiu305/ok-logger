#import "OkLogger.h"

@implementation OkLogger

+ (instancetype)sharedLogger
{
    static OkLogger *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[OkLogger alloc] init];
        sharedInstance.logLevel = LogLevelInfo; // default
    });
    
    return sharedInstance;
}

- (void)logMessage:(NSString *)message
{
    NSString *levelString;
    switch (self.logLevel) {
        case LogLevelDebug:
            levelString = @"DEBUG";
            break;
        case LogLevelInfo:
            levelString = @"Info";
            break;
        case LogLevelWarn:
            levelString = @"Warn";
            break;
        case LogLevelError:
            levelString = @"Error";
            break;

    }
    NSLog(@"[%@]: %@", levelString, message);
}

@end
