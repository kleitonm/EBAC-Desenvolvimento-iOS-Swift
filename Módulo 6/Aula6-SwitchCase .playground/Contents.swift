import UIKit

var str = "Hello, playground"

//
let count = 10
switch count {
case 0:
    print("0")
case 2:
    print("2")
case 3..<7:
    print("3")
default:
    print("default")
}

var txt = ""
switch count {
case 0:
    txt = "0"
case 2:
    txt = "2"
case 3, 7:
    txt = "3"
default:
    txt = "default"
}
print(txt)

let chr = "b"
switch chr {
case "a":
    print("this is an a")
case "b", "c":
    print("this is an b or c")

default:
    prin("this is the fallback")
}
