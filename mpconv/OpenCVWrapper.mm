#import "OpenCVWrapper.h"
#import "ConvTo.h"
#import <opencv2/imgcodecs/ios.h>

@implementation OpenCVWrapper : NSObject 
- (void) convertFileToMP4WithInput: (NSURL *) input  andOutput: (NSURL *) output {
    ConvTo conv;
    
    std::string pathInput = std::string([input.path UTF8String]);
    std::string pathOutput = std::string([output.path UTF8String]);
    
    cv::Mat mat = conv.saveImage(pathInput, pathOutput);

    // use  imgcodeg
    //UIImage *convertedImage = MatToUIImage(mat);
    //NSData *data = UIImageJPEGRepresentation(convertedImage, 100.0);
    //[data writeToURL:output atomically:true];
    
}
@end
