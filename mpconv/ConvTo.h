#include <string>
#include <opencv2/opencv.hpp>

using namespace std;

class ConvTo {
public:
    cv::Mat saveImage(std::string inputPath, std::string outputPath);
};

