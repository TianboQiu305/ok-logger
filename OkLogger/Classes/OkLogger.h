//
//  OkLogger.h
//  Pods
//
//  Created by Tianbo Qiu on 3/27/25.
//
#include <Foundation/Foundation.h>

#ifndef OkLogger_h
#define OkLogger_h

typedef NS_ENUM(NSInteger, LogLevel) {
    LogLevelDebug,
    LogLevelInfo,
    LogLevelWarn,
    LogLevelError,
};

@interface OkLogger : NSObject

// global logger instance
+ (instancetype)sharedLogger;

// set the log level globally
@property (nonatomic, assign) LogLevel logLevel;

- (void)logMessage:(NSString *)message;

@end

#endif /* OkLogger_h */
