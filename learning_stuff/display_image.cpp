#include <iostream>
#include <opencv2/opencv.hpp>

int main(int n_args, char** args) {
    if (n_args < 2) {
        std::cout << "Nothing to display!" << std::endl;
        return -1;
    }

    cv::Mat first_image;
    first_image = cv::imread( args[1], 1);

    if ( !first_image.data ) {
        std::cout << "Now there is an image argument but nothing to display in it" << std::endl;
        return -1;
    }

    namedWindow( args[1], cv::WINDOW_AUTOSIZE );
    cv::imshow(args[1], first_image);

    std::cout << "Press any key to quit!" << std::endl;
    cv::waitKey(0);

    std::cout << "Completion of our first CV program!" << std::endl;
    return 0;
}
