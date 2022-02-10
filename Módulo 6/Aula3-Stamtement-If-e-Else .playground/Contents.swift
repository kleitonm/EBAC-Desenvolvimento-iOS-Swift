//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

let yes: Bool = true
let no: Bool = false

if no {
    print("entrou")
} else {
    print("entrou no else")
}

let name = "Kleiton"

if name == "Kleiton" {
    print(name)
} else if name == "Mendes" {
} else {
    print("False")
}

//if ternario
var x = name == "Kleber" ? "Kleiton" : "Mendes"
print(x)

if (day > 2) {
    print("sim")
} else if (day < 2) {
    print("é")
} else {
    print("2")
}

if 8 < 9 || 8 > 9 {
    print("if")
}

if 8 < 9 && 8 > 9 {
    print("if")
} else {
    print("else")
}


