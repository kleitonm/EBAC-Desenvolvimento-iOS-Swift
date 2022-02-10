import UIKit
import Foundation

var greeting: String
var age: Int
var result: Int?

greeting = "Hello Word"
age = 28

result = Int(greeting)
if let result = result {
    result * 2
} else {
    "Sem valor"
}

class ViewController: UIViewController {
    var label: UILabel?
}

var optinalsSring: String? = "Hello"
var haveResult = optinalsSring ?? "Word"

if let unwrapped = optinalsSring {
    haveResult = unwrapped
} else {
    haveResult = "Hey"
}


