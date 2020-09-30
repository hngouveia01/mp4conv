#import <Foundation/Foundation.h>

@interface OpenCVWrapper : NSObject
- (void) convertFileToMP4WithInput: (NSURL *) input  andOutput: (NSURL *) output;
@end
