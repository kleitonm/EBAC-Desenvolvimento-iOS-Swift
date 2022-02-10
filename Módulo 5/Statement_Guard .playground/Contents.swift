import UIKit

func getPerson(person: String?) {
    guard let name = person else {
        print("What is the problem")
        return
    }
    print("Hello, \(name)")
}

getPerson(person: nil)

var imageview = UIImageView()
imageview.image = UIImage(named: "download_internet.png")

let imageSize = imageView.image?.size

print(imageSize)
