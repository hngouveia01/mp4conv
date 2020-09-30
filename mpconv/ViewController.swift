import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let inputPath = Bundle.main.bundleURL.appendingPathComponent("example.mp4")
        let tempPath = FileManager.default.temporaryDirectory.appendingPathComponent("output.jpg")

        let openCVWrapper = OpenCVWrapper()
        openCVWrapper.convertFileToMP4(withInput: inputPath, andOutput: tempPath)
    }
}
