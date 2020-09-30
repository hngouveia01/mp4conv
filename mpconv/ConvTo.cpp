#include <opencv2/opencv.hpp>
#include <opencv2/imgcodecs/imgcodecs_c.h>
#include <iostream>
#include <fstream>
#include <cstdio>

#include "ConvTo.h"

using namespace std;
using namespace cv;

Mat ConvTo::saveImage(std::string path, std::string output) {
    Mat frame;

    try {
        VideoCapture cap(path);

        if (!cap.isOpened()) {
            return frame;
        }

        cap >> frame;

        vector<int> compression_params;
        compression_params.push_back(CV_IMWRITE_JPEG_QUALITY);
        compression_params.push_back(100);
        imwrite(output, frame);
        return frame;

    } catch(cv::Exception& e) {
        cerr << e.msg << endl;
        return frame;
    }
}
